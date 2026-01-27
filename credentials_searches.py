import json, os

def credentials_search():
    if os.access("logs.json", os.R_OK):
        with open("logs.json") as fd_log:
            data = json.load(fd_log)
            res = {}
            while isinstance(data, dict) and not (res.get("password") or res.get("secret")):
                if data.get("password"):
                    res["password"] = data.get("password")
                if data.get("secret"):
                    res["secret"] = data.get("secret")
            if res :
                with open("credentials.json", "w") as fd_cr:
                    fd_cr.write(json.dumps(res))