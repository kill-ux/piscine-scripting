import json

def merge_two(map1):
    map2 = {}
    while True:
        key = input()
        if key == "exit":
            break
        value = input()
        map2[key] = int(value)
    map = map1 | map2
    json.dumps(map)
    