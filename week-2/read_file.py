import json

def get_recipes(file_name):
    fd = open(file_name)
    content = fd.read()
    fd.close()
    return json.loads(content)
