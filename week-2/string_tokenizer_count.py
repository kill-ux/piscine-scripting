import re, string

def tokenizer_counter(str):
    palette = f"[{string.punctuation}]"
    str = re.sub(palette, "", str)
    str = str.lower()
    res = {}
    for word in str.split():
        res[word] = res.get(word, 0) + 1
    return res
    