import json

def merge_two(map1):
    map2 = {}
    while True:
        print("key: ", end="")
        key = input()
        if key == "exit":
            break
        print("value: ", end="")
        value = input()
        map2[key] = int(value)
    map = map1 | map2
    return json.dumps(map)
    