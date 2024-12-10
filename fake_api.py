# from flask import Flask, request, jsonify
import sys
import numpy as np
import tensorflow as tf
import torch
from typing import Dict

sys.path.append('./function')  # Replace '/path/to/folder' with the actual folder path
from function import load_data, pymu_process

# app = Flask(__name__)

# Load model
MODEL_PATH = 'model/similarity_model.h5'  # replace with the actual model path
model = tf.keras.models.load_model('model\similarity_model.h5')
processor = pymu_process.TextProcessorWithPyMuPDF()

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
        explanation_emb_np = explanation_emb.cpu().numpy() if torch.cuda.is_available() else explanation_emb.numpy()
        reference_emb_np = reference_emb.cpu().numpy() if torch.cuda.is_available() else reference_emb.numpy()
        
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
        
        # Get predictions using model's predict method
        predictions = self.model.predict([
            input_data['text_input'],
            input_data['explanation_input']
        ])
        
        # Convert predictions to probabilities
        understanding_pred = predictions[0]
        completeness_pred = predictions[1]
        
        # Format results with confidence scores
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

student_explanation = "Pada bab Menjelajah Sel, terdapat beberapa poin penting yang perlu dipahami. Pada Aktivitas 1.1, objek yang tidak dapat diamati dengan mikroskop cahaya meliputi virus T2 fag, protein, lipid, molekul-molekul kecil, dan atom. Sebaliknya, objek yang dapat diamati mencakup telur ikan, burung kolibri, manusia, paus biru, dan pohon pinus raksasa. Pada Aktivitas 1.2, saya membaca artikel berjudul Pemeriksaan Sitologi Aspiratif untuk Mendeteksi Kanker Paru. Artikel ini menjelaskan bahwa para peneliti menggunakan berbagai metode dalam penelitian sitologi untuk mendukung deteksi kanker paru.  Pada Aktivitas 1.3, jenis-jenis mikroskop juga dipelajari. Mikroskop cahaya mampu memperbesar hingga 1.000 kali, sementara mikroskop elektron memiliki kemampuan hingga 1.000.000 kali. Namun, perbesaran maksimal pada mikroskop elektron sering kali sulit tercapai karena berbagai faktor teknis. Di Aktivitas 1.4, kita mengenal bagian-bagian mikroskop dan fungsinya. Misalnya, lensa okuler berfungsi memperbesar bayangan dari lensa objektif, tabung menghubungkan kedua lensa tersebut, sementara sekrup pengarah kasar dan halus digunakan untuk mengatur fokus dengan tingkat kecepatan yang berbeda. Ada juga revolver yang digunakan untuk mengganti perbesaran lensa objektif, serta meja benda yang menjadi tempat meletakkan preparat.  Selanjutnya, pada Aktivitas 1.7, dibahas enam jenis sel yang mendukung retina mata, yaitu sel fotoreseptor, sel bipolar, sel ganglion retina, sel horizontal, sel amakrin, dan sel pigmen retina. Masing-masing sel memiliki peran khusus dalam memastikan fungsi retina berjalan optimal. Selain itu, penting untuk memahami cara memegang, menyimpan, dan menggunakan mikroskop dengan benar. Mikroskop sebaiknya dipegang dengan tangan kanan pada bagian pegangan, sementara tangan kiri menopang di bawahnya, dan disimpan di tempat yang aman serta kering untuk menjaga keawetannya. Demikian penjelasan mengenai materi ini."
reference_pdf_path = "Perkategori/Biologi-BG-KLS-XI-29-50.pdf"
    
evaluator = QuestionEvaluator(model, processor)
results = evaluator.evaluate_explanation(student_explanation, reference_pdf_path)
    
print(results)
    