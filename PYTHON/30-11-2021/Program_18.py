# Rename key of a dictionary
# Write a program to rename a key city to a location in the following dictionary.

sample_dict = {
    "name": "Kelly",
    "age": 25,
    "salary": 8000,
    "city": "New york"
}
keys = ["name", "salary"]

for i in keys:
    sample_dict.pop(i)
print(sample_dict)