# Remove empty strings from the list of strings
# list1 = ["Mike", "", "Emma", "Kelly", "", "Brad"]

list_val = ["Mike", "", "Emma", "Kelly", "", "Brad"]

result = list(filter(None, list_val))
print(result)
