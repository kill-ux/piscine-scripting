
def clean_list(list):
    
        
    for i,item in enumerate(list) :
        list[i] = item.strip().capitalize()
        
    if ('Milk' not in list) and (len(list) != 0):
        list.append('Milk')
    
    for i,item in enumerate(list) :
        list[i] = f"{i+1}/ {item}"
    
    return list
    