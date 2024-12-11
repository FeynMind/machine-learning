import re
import fitz

def extract_pdf_text(file_path):
    """
    Extract text from PDF file

    :param file_path: Path to the PDF file
    :return: Extracted text
    """
    doc = fitz.open(file_path)
    text = ""
    for page in doc:
        text += page.get_text() + "\n"
    doc.close()
    return text

def clean_pdf_text(text):
    """
    Clean extracted PDF text

    :param text: Raw extracted text
    :return: Cleaned text
    """
    # Remove duplicate lines
    seen = set()
    result_text = []
    lines = text.split("\n")
    for line in lines:
        cleaned_line = line.strip()
        if cleaned_line and cleaned_line not in seen:
            seen.add(cleaned_line)
            result_text.append(cleaned_line)

    # Clean text further
    cleaned_text = re.sub(r'\n+', '\n', "\n".join(result_text))
    cleaned_text = re.sub(r'\s+', ' ', cleaned_text)
    cleaned_text = re.sub(r'[^\w\s.,:]', '', cleaned_text)

    return cleaned_text.strip()

def cut_pdf_content(text):
    """
    Cut PDF content to remove specific sections

    :param text: Input text
    :return: Processed text
    """
    # Remove 'daftar pustaka' section
    dapus_pattern = re.compile(r'(.*?)(daftar pustaka)', re.IGNORECASE)
    match = dapus_pattern.search(text)
    if match:
        text = match.group(1)

    # Remove 'daftar gambar' or 'daftar tabel'
    dots_pattern = re.compile(r'\.{10,}', re.DOTALL)
    matches = list(dots_pattern.finditer(text))
    if matches:
        last_match = matches[-1]
        text = text[last_match.end():].strip()

    return text

def split_sentences(text):
    """
    Split text into sentences

    :param text: Input text
    :return: List of sentences
    """
    sentences = re.split(r'(?<=\.)\s+', text.strip())
    sentences = [sent.strip() for sent in sentences if sent.strip()]
    return sentences