import re
from tensorflow.keras.preprocessing.text import Tokenizer
from tensorflow.keras.preprocessing.sequence import pad_sequences

class TextPreprocessor:
    def __init__(self, max_words=10000, max_len=100):
        """
        Initialize text preprocessing utilities

        :param max_words: Maximum number of words to keep in tokenizer
        :param max_len: Maximum length of sequences
        """
        self.max_words = max_words
        self.max_len = max_len
        self.stopwords = set([
            'yang', 'dan', 'di', 'ke', 'dari', 'untuk', 'pada', 'adalah', 'ini',
            'itu', 'dengan', 'juga', 'sebagai', 'karena', 'oleh', 'dalam',
            'atau', 'saja', 'lebih', 'hanya', 'akan', 'telah', 'apakah', 'berapa',
            'bagaimana', 'mereka', 'kami', 'kita', 'saya', 'anda', 'dia', 'siapa'
        ])
        self.tokenizer = Tokenizer(num_words=self.max_words, oov_token='<OOV>')

    def clean_text(self, text):
        """
        Clean and normalize text

        :param text: Input text
        :return: Cleaned text
        """
        # Convert to lowercase
        text = text.lower()

        # Remove special characters and digits
        text = re.sub(r'[^a-zA-Z\s]', '', text)

        # Remove extra whitespaces
        text = re.sub(r'\s+', ' ', text).strip()

        return text

    def remove_stopwords(self, text):
        """
        Remove stopwords from text

        :param text: Input text
        :return: Text without stopwords
        """
        return ' '.join([word for word in text.split()
                         if word not in self.stopwords])

    def fit_tokenizer(self, documents):
        """
        Fit tokenizer on documents

        :param documents: List of documents
        """
        # Preprocess documents
        cleaned_docs = [self.clean_text(doc) for doc in documents]
        cleaned_docs = [self.remove_stopwords(doc) for doc in cleaned_docs]

        # Fit tokenizer
        self.tokenizer.fit_on_texts(cleaned_docs)

    def vectorize_documents(self, documents):
        """
        Vectorize documents using tokenizer

        :param documents: List of documents
        :return: Padded sequences of documents
        """
        # Preprocess documents
        cleaned_docs = [self.clean_text(doc) for doc in documents]
        cleaned_docs = [self.remove_stopwords(doc) for doc in cleaned_docs]

        # Convert to sequences
        sequences = self.tokenizer.texts_to_sequences(cleaned_docs)

        # Pad sequences
        padded_sequences = pad_sequences(sequences, maxlen=self.max_len, padding='post', truncating='post')

        return padded_sequences