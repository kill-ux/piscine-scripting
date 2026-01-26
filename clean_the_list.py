
def clean_list(list):
    if ('milk' not in list) :
        list.append('milk')
    for i,item in enumerate(list) :
        list[i] = f"{i+1}/ {item.strip().capitalize()}"
    return list
    