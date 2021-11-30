# Create a new list from a two list using the following condition
# Given a two list of numbers, write a program to create a new list such that the new list should contain odd
# numbers from the first list and even numbers from the second list.


def merge_list(list_1, list_2):
    result_val = []
    
    for num in list_1:
        if num % 2 != 0:
            result_val.append(num)
    
    for num in list_2:
        if num % 2 == 0:
            result_val.append(num)
    return result_val

list_1 = [10, 20, 25, 30, 35]
list_2 = [40, 45, 60, 75, 90]
print("result list:", merge_list(list_1, list_2))