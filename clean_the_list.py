
def clean_list(list):
    # if ('milk' not in list) and (len(list) != 0):
    #     list.append('milk')
    for i,item in enumerate(list) :
        list[i] = f"{i+1}/ {item.strip().capitalize()}"
    return list
    