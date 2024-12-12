def get_learning_path(topic, data):
    if topic in data:
        learning_path = data[topic]['learning_path']
        return learning_path
    else:
        return None


def get_keywords(topic, data):
    if topic in data:
        subtopic_keywords = data[topic]['subtopic_keywords']
        return subtopic_keywords
    else:
        return None


def generate_respon(evaluation_results, current_context):
    """
    Generate a response based on the student's understanding and completeness of explanation.

    Args:
        evaluation_results (dict): Results from QuestionEvaluator containing understanding and completeness metrics
        current_context (dict): Current learning context including topics, subtopics, etc.

    Returns:
        str: Personalized learning recommendation or feedback
    """
    # Extract understanding and completeness probabilities
    understanding = evaluation_results['understanding']
    completeness = evaluation_results['completeness']

    # Determine the highest probability categories
    top_understanding = max(understanding, key=understanding.get)
    top_completeness = max(completeness, key=completeness.get)

    # Generate response based on understanding level
    if top_understanding == 'Low':
        if top_completeness == 'Incomplete':
            return "Saya melihat bahwa penjelasan Anda masih sangat terbatas. Mari kita mulai dengan konsep dasar. Dapatkah Anda menjelaskan kembali topik ini dengan lebih detail?"

        return "Sepertinya Anda memiliki pemahaman yang masih rendah tentang topik ini. Saya sarankan kita membahas konsep-konsep kunci dengan lebih mendalam."

    elif top_understanding == 'Medium':
        if top_completeness == 'Partial':
            return f"Anda sudah mulai memahami topik ini dengan baik, tetapi masih ada beberapa area yang perlu dijelajahi. Bisakah Anda menjelaskan lebih lanjut tentang {current_context.get('current_subtopic', 'topik ini')}?"

        return "Pemahaman Anda sudah cukup baik. Mari kita eksplorasi topik ini lebih mendalam untuk meningkatkan kedalaman pengetahuan Anda."

    elif top_understanding == 'High':
        if top_completeness == 'Complete':
            # If understanding is high and completeness is complete, suggest moving to next topic
            next_topic = current_context.get('next_topics', ['topik baru'])[0]
            return f"Selamat! Anda telah menjelaskan topik {current_context.get('current_subtopic', 'saat ini')} dengan sangat komprehensif. Saya rasa kita siap untuk membahas {next_topic}. Apa pendapat Anda?"

        return "Anda memiliki pemahaman yang tinggi tentang topik ini. Namun, ada beberapa detail yang mungkin bisa Anda elaborasi lebih lanjut."

    # Fallback response
    return "Terima kasih atas penjelasan Anda. Mari kita lanjutkan diskusi kita."