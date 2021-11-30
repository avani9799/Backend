# Replace list’s item with new value if found
# You have given a Python list. Write a program to find value 20 in the list, and if it is present, replace it
# with 200. Only update the first occurrence of an item.

list_val = [5, 10, 15, 20, 25, 50, 20]

index = list_val.index(20)
list_val[index] = 200
print(list_val)