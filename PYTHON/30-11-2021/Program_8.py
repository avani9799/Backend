# Concatenate two lists index-wise
# Write a program to add two lists index-wise. Create a new list that contains the 0th index item from both
# the list, then the 1st index item, and so on till the last element. any leftover items will get added at the end
# of the new list.

list_1 = ["M", "na", "i", "Ke"] 
list_2 = ["y", "me", "s", "lly"]
list_3 = [i + j for i, j in zip(list_1, list_2)]
print(list_3)