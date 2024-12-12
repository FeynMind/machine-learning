from flask import Flask, request, jsonify
import sys
import numpy as np
import tensorflow as tf
from typing import Dict

sys.path.append('./function')
from function import load_data, pymu_process, func

app = Flask(__name__)

processor = pymu_process.TextProcessorWithPyMuPDF()

# Try to use TFSMLayer if available, otherwise fallback to tf.saved_model.load
try:
    from tensorflow.keras.layers import TFSMLayer

    model_layer = TFSMLayer("saved_model", call_endpoint="serving_default")
except (ImportError, AttributeError):
    print("TFSMLayer not available, using tf.saved_model.load")
    model = tf.saved_model.load("saved_model")
    infer = model.signatures["serving_default"]


class QuestionEvaluator:
    def __init__(self, model, processor):
        self.model = model
        self.processor = processor

    def prepare_input_data(self, student_explanation: str, reference_pdf_path: str) -> Dict[str, np.ndarray]:
        # Clean and process texts
        cleaned_explanation = self.processor.clean_text(student_explanation)
        reference_text = self.processor.extract_from_pdf(reference_pdf_path)
        cleaned_reference = self.processor.clean_text(reference_text)

        # Generate embeddings
        explanation_emb = self.processor.generate_embeddings(cleaned_explanation)
        reference_emb = self.processor.generate_embeddings(cleaned_reference)

        # Convert to numpy
        explanation_emb_np = explanation_emb.cpu().numpy() if tf.test.is_gpu_available() else explanation_emb.numpy()
        reference_emb_np = reference_emb.cpu().numpy() if tf.test.is_gpu_available() else reference_emb.numpy()

        # Ensure correct shape for model input
        if len(explanation_emb_np.shape) == 1:
            explanation_emb_np = np.expand_dims(explanation_emb_np, 0)
        if len(reference_emb_np.shape) == 1:
            reference_emb_np = np.expand_dims(reference_emb_np, 0)

        # Split embeddings
        half_dim = explanation_emb_np.shape[1] // 2
        return {
            "text_input": reference_emb_np[:, :half_dim],
            "explanation_input": explanation_emb_np[:, half_dim:]
        }

    def evaluate_explanation(self, student_explanation: str, reference_pdf_path: str) -> Dict[str, Dict[str, float]]:
        input_data = self.prepare_input_data(student_explanation, reference_pdf_path)

        # Use TFSMLayer if available, otherwise use the loaded model
        if hasattr(self.model, '__call__'):
            predictions = self.model(
                text_input=input_data['text_input'],
                explanation_input=input_data['explanation_input']
            )
        else:
            predictions = self.model(
                text_input=input_data['text_input'],
                explanation_input=input_data['explanation_input']
            )

        understanding_pred = predictions['output_0'].numpy()
        completeness_pred = predictions['output_1'].numpy()

        results = {
            "understanding": {
                "Low": float(understanding_pred[0][0]),
                "Medium": float(understanding_pred[0][1]),
                "High": float(understanding_pred[0][2])
            },
            "completeness": {
                "Incomplete": float(completeness_pred[0][0]),
                "Partial": float(completeness_pred[0][1]),
                "Complete": float(completeness_pred[0][2])
            },
            "metrics": {
                "understanding_confidence": float(np.max(understanding_pred)),
                "completeness_confidence": float(np.max(completeness_pred))
            }
        }

        return results


# Initialize evaluator with TFSMLayer or fallback model
evaluator = QuestionEvaluator(model_layer if 'model_layer' in locals() else infer, processor)

# @app.route('/evaluate', methods=['POST'])
# def evaluate():
#     data = request.get_json()
#     student_explanation = data.get('student_explanation')
#     reference_pdf_path = data.get('reference_pdf_path')

#     if not student_explanation or not reference_pdf_path:
#         return jsonify({"error": "Missing student_explanation or reference_pdf_path"}), 400

#     results = evaluator.evaluate_explanation(student_explanation, reference_pdf_path)
#     return jsonify(results)

from function.func import generate_respon  # Add this import at the top


@app.route('/evaluate', methods=['POST'])
def evaluate():
    data = request.get_json()
    student_explanation = data.get('student_explanation')
    reference_pdf_path = data.get('reference_pdf_path')
    current_context = data.get('context', {})  # Get context from request

    if not student_explanation or not reference_pdf_path:
        return jsonify({"error": "Missing student_explanation or reference_pdf_path"}), 400

    try:
        # Get evaluation results
        results = evaluator.evaluate_explanation(student_explanation, reference_pdf_path)

        # Generate response based on results
        response = generate_respon(results, current_context)

        # Add response to results
        results['feedback'] = response

        return jsonify(results)

    except Exception as e:
        return jsonify({"error": str(e)}), 500


if __name__ == '__main__':
    app.run(debug=True)