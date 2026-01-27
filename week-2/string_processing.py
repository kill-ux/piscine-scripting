import re
import string
    
def tokenize(sentence):
    lower_text = sentence.strip().lower()
    pattern = f"[{string.punctuation}]|[^{string.ascii_letters}{string.digits}]"
    clean_text = re.sub(pattern, " ", lower_text)
    return clean_text.split()
    