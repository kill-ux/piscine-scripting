import json

class User:
    username = 'user'
    email = 'something@mail.com'

def create_new_user(dict_str):
    dict = json.loads(dict_str)
    username = dict.get("username")
    email = dict.get("email")
    my_obj = User()
    if username and email :
        my_obj.username = username
        my_obj.email = email
    return my_obj

def user_to_json(user):
    return json.dumps(user.__dict__)