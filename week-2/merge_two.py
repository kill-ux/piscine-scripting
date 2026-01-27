import json

def merge_two(map1):
    map2 = {}
    while True:
        key = input("key: ")
        if key == "exit":
            break
        value = input("value: ")
        map2[key] = int(value)
    map = map1 | map2
    return json.dumps(map)
    