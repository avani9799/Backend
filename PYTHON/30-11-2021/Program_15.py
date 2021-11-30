# Remove all occurrences of a specific item from a list.
# Given a Python list, write a program to remove all occurrences of item 20.

list_val = [5, 20, 15, 20, 25, 50, 20]

def remove_value(sample, value):
    return [i for i in sample if i != value]

result = remove_value(list_val, 20)
print(result)
