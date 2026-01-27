import sys,os

if __name__ == "__main__":
    if len(sys.argv) != 2 or not os.access(sys.argv[1], os.R_OK):
        sys.exit(1)
    file_name = sys.argv[1]
    content = ""
    substring = "pineapple"
    with open(file_name) as fd:
        while True:
            line = fd.readline()
            if not line:
                break
            if substring not in line:
                content += line
    with open("out.txt","w") as fd:
        fd.write(content)