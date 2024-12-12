# Machine Learning

## FeynMind: Your Learning Buddy
FeynMind is a mobile application designed to enhance science education for senior high school students in Indonesia. Inspired by the Feynman Technique, the app enables users to engage in simulated teaching sessions, promoting active learning through simplified explanations of complex topics. The application uses speech recognition to capture user input, provides feedback based on their responses, and presents relevant references from a curated knowledge base. By integrating machine learning and cloud computing, FeynMind delivers an engaging and interactive platform for improving cognitive skills, academic confidence, and science comprehension.

## Table of Contents

- [FeynMind: Your Learning Buddy](#project-overview)
- [Key Features](#key-features)
- [Model Architecture](#model-architecture)
- [Usage](#usage)
- [Results](#results)
- [Contributing](#contributing)
- [Acknowledgements](#acknowledgements)


## Key Features
- Speech Recognition: Uses Android’s SpeechRecognizer to capture and process user input.
- Interactive Feedback: Provides constructive feedback and follow-up questions based on the user’s explanations.
- Knowledge Base Integration: Displays relevant references to guide learning.
- PDF Upload: Allows users to upload textbooks and teaching materials.
- User Authentication: Secure login and registration system.

## Dataset
Scientific Textbooks Dataset: High school-level science materials for creating a knowledge base and question generation.

## Model Architecture
- Speech Recognition: Pre-trained speech-to-text models fine-tuned with high school science terminology.
- Feedback Mechanism: Natural language processing (NLP) techniques to classify and analyze user responses.
- Question Generation: Sequence-to-sequence (Seq2Seq) models to generate relevant questions based on user input.

## Usage
1. Prepare the dataset:
    - Place the dataset in the appropriate directory.

2. Train the model:
    - Open and run the provided Jupyter Notebook.
    - The notebook will guide you through data augmentation, model training, and evaluation.

3. Evaluate the model:
    - The notebook includes steps to evaluate the model using the test set and visualize the results.

  ## Results

The trained models achieve high accuracy in classifying the different types of acne. Detailed results and performance metrics, including accuracy, confusion matrices, and classification reports, will be generated and displayed within the Notebook.

## Contributing

We welcome contributions to the Acnetify project. To contribute, please follow these steps:

1. Fork the repository.
2. Create a new branch:
    ```bash
    git checkout -b feature-branch
    ```
3. Make your changes and commit them:
    ```bash
    git commit -m "Add new feature"
    ```
4. Push to the branch:
    ```bash
    git push origin feature-branch
    ```
5. Open a pull request.


## Acknowledgements

- [Kaggle](https://www.kaggle.com/)
- [Roboflow](https://roboflow.com/)
- [Deepnote](https://deepnote.com/)
- [Google Colab](https://colab.research.google.com/)
- [TensorFlow](https://www.tensorflow.org/)
