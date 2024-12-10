import re
import numpy as np
import tensorflow as tf
from tensorflow.keras.layers import (
    Dense, Dropout, LayerNormalization, MultiHeadAttention, 
    Reshape, Flatten, Concatenate, Activation, Add, Input
)
from tensorflow.keras.models import Model  
from tensorflow.keras.callbacks import LearningRateScheduler, EarlyStopping, ReduceLROnPlateau, ModelCheckpoint
from tensorflow.keras.optimizers import AdamW
from tensorflow.keras.utils import to_categorical
from tensorflow.keras.metrics import Precision, Recall
from tensorflow.keras.activations import gelu

from transformers import AutoTokenizer
from sentence_transformers import SentenceTransformer
import torch
import fitz
from sklearn.model_selection import train_test_split
from sklearn.metrics import classification_report
import matplotlib.pyplot as plt
from typing import List

class TextProcessorWithPyMuPDF:
    def __init__(self, max_length=1024):
        self.model_name = "sentence-transformers/all-MiniLM-L6-v2"
        self.tokenizer = AutoTokenizer.from_pretrained(self.model_name)
        self.sentence_transformer = SentenceTransformer(self.model_name)
        self.max_length = max_length
    
    def extract_from_pdf(self, pdf_path: str) -> str:
        """Extract text from PDF using PyMuPDF"""
        text = ""
        try:
            with fitz.open(pdf_path) as doc:
                for page in doc:
                    text += page.get_text() + "\n"
        except Exception as e:
            print(f"Error processing {pdf_path}: {str(e)}")
            return ""
        return text

    def clean_text(self, text: str) -> str:
        """Clean and normalize text"""
        text = re.sub(r'\s+', ' ', text)
        text = re.sub(r'\n+', ' ', text)
        text = re.sub(r'[^\w\s\-\'àáâãäåèéêëìíîïòóôõöùúûüýÿÀÁÂÃÄÅÈÉÊËÌÍÎÏÒÓÔÕÖÙÚÛÜÝ]', '', text)
        return text.strip()
    
    def hapus_duplikat(self, text: str) -> str:
        seen = set()
        result_text = []
        lines = text.split("\n")
        for line in lines:
            cleaned_line = line.strip()
            if cleaned_line and cleaned_line not in seen:
                seen.add(cleaned_line)
                result_text.append(cleaned_line)
        return "\n".join(result_text)
    
    def cut_isi(self, text: str) -> str:
        pola_2dapus = re.compile(r'(?<=daftar pustaka)(.*?)(?=daftar pustaka)', re.IGNORECASE)
        match = pola_2dapus.search(text)
        if match:
            hasil = match.group(1)
            return hasil
        else:
            pola_1dapus = re.compile(r'(.*?)(daftar pustaka)', re.IGNORECASE)
            cek_1dapus = pola_1dapus.search(text)
            if cek_1dapus:
                hasil = cek_1dapus.group(1)
                return hasil
            else:
                return "Tidak ditemukan kata 'daftar pustaka' sama sekali."

    def cut_daftar(self, text: str) -> str:
        pola_titik = re.compile(r'\.{10,}', re.DOTALL)
        matches = list(pola_titik.finditer(text))
        if matches:
            last_match = matches[-1]
            last_match_end = last_match.end()
            text = text[last_match_end:].strip()
        return text
    
    def generate_embeddings(self, texts, batch_size=32):
        """Generate embeddings for texts"""
        embeddings_list = []
        # Ensure texts is a list
        if isinstance(texts, str):
            texts = [texts]
        
        for i in range(0, len(texts), batch_size):
            batch = texts[i:i + batch_size]
            # Use encode method from sentence_transformer
            batch_embeddings = self.sentence_transformer.encode(batch, convert_to_tensor=True)
            embeddings_list.append(batch_embeddings)
        
        return torch.cat(embeddings_list, dim=0)
 
    def augment_text_methods(self, text: str) -> List[str]:
        """Text augmentation methods"""
        augmented = []
        
        # 1. Sentence shuffling
        sentences = text.split('. ')
        if len(sentences) > 1:
            shuffled = sentences.copy()
            np.random.shuffle(shuffled)
            augmented.append('. '.join(shuffled))
        
        # 2. Random deletion
        words = text.split()
        if len(words) > 10:
            n_to_delete = max(1, int(len(words) * 0.1))
            keep_indices = np.random.choice(
                len(words), 
                len(words) - n_to_delete, 
                replace=False
            )
            augmented.append(' '.join([words[i] for i in sorted(keep_indices)]))
            
        # 3. Random insertion
        if len(words) > 5:
            n_to_insert = max(1, int(len(words) * 0.1))
            augmented_words = words.copy()
            for _ in range(n_to_insert):
                pos = np.random.randint(0, len(words))
                word = np.random.choice(words)
                augmented_words.insert(pos, word)
            augmented.append(' '.join(augmented_words))
                
        return augmented

    def create_augmented_dataset(self, texts: List[str], n_augment: int = 2) -> List[str]:
        """Create augmented dataset"""
        augmented_texts = []
        
        for text in texts:
            # Keep original
            augmented_texts.append(text)
            
            # Add augmentations
            for _ in range(n_augment):
                augmented = self.augment_text_methods(text)
                if augmented:
                    augmented_texts.extend(augmented)
                    
        return augmented_texts