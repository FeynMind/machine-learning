import os
from pymu_process import TextProcessorWithPyMuPDF
from tensorflow.keras.utils import to_categorical
import numpy as np
import torch

def load_and_preprocess_pdf_data(pdf_dir: str, augment: bool = True, n_augment: int = 2):
    """Load and preprocess PDF documents"""
    processor = TextProcessorWithPyMuPDF()
    all_texts = []
    
    # Check if directory exists
    if not os.path.exists(pdf_dir):
        raise ValueError(f"Directory {pdf_dir} does not exist")
    
    pdf_files = [f for f in os.listdir(pdf_dir) if f.endswith(".pdf")]
    
    # Check if there are any PDF files
    if not pdf_files:
        raise ValueError(f"No PDF files found in {pdf_dir}")
    
    for pdf_file in pdf_files:
        pdf_path = os.path.join(pdf_dir, pdf_file)
        try:
            raw_text = processor.extract_from_pdf(pdf_path)
            if raw_text:
                cleaned_text = processor.clean_text(raw_text)
                all_texts.append(cleaned_text)
        except Exception as e:
            print(f"Error processing {pdf_file}: {str(e)}")
            continue
    
    print(f"Successfully processed {len(all_texts)} documents")
    
    # Check if any texts were processed
    if not all_texts:
        raise ValueError("No text could be extracted from the PDFs")
    
    if augment:
        all_texts = processor.create_augmented_dataset(all_texts, n_augment)
        
    print(f"Total texts after augmentation: {len(all_texts)}")
    
    # Generate embeddings
    embeddings = processor.generate_embeddings(all_texts)
    embeddings_np = embeddings.cpu().numpy() if torch.cuda.is_available() else embeddings.numpy()
    
    # Split embeddings
    half_dim = embeddings_np.shape[1] // 2
    input_data = {
        "text_input": embeddings_np[:, :half_dim],
        "explanation_input": embeddings_np[:, half_dim:]
    }
    
    # Generate balanced labels
    n_samples = len(all_texts)
    labels = np.random.randint(0, 3, n_samples)
    
    # Balance classes
    from sklearn.utils import resample
    
    balanced_indices = []
    for i in range(3):
        indices = np.where(labels == i)[0]
        if len(indices) > 0:
            balanced_indices.extend(
                resample(indices, n_samples=max(len(indices), n_samples//3))
            )
    
    # Convert to categorical
    output_data = {
        "understanding": to_categorical(labels[balanced_indices], num_classes=3),
        "completeness": to_categorical(np.random.randint(0, 3, len(balanced_indices)), num_classes=3)
    }
    
    # Update input data
    for key in input_data:
        input_data[key] = input_data[key][balanced_indices]
        
    return input_data, output_data
