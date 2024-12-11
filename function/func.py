def get_learning_path(topic):
    if topic in data:
        learning_path = data[topic]['learning_path']
        return learning_path
    else:
        return None
    
def get_keywords(topic):
    if topic in data:
        subtopic_keywords = data[topic]['subtopic_keywords']
        return subtopic_keywords
    else:
        return None