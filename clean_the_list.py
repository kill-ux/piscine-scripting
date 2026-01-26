
def clean_list(list):
    for i,item in enumerate(list) :
        list[i] = f"{i}/ {item.strip().capitalize()}"
    return list
    