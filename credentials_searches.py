import json, os

def credentials_search():
    if os.access("logs.json", os.R_OK):
        with open("logs.json") as fd_log:
            data = json.load(fd_log)
            res = {}
            if isinstance(data, dict):
                res = read_logs(data)
            if res:
                with open("credentials.json", "w") as fd_cr:
                    fd_cr.write(json.dumps(res))
                    
def read_logs(data):
    res = {}
    for key, value in data.items():
        if key == "password":
            res["password"] = data.get("password")
        if data.get("secret"):
            res["secret"] = data.get("secret")
        if isinstance(value, dict):
            res = res | read_logs(value)
    return res