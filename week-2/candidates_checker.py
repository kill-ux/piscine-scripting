import sys

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Error: wrong number of arguments")
        sys.exit(1)
    std = int(sys.argv[1])
    res = {}
    for i in range(std):
        print("Add a new candidate:")
        name = input("name: ")
        age = int(input("age: "))
        res[name] = age
        
    for key, value in res.items():
        if value < 18 :
            print(f"{key} is not eligible (underaged)")
        elif value > 60:
            print(f"{key} is not eligible (over the legal age)")
        else:
            print(f"{key} is eligible")