# Find words with both alphabets and numbers
# Write a program to find words with both alphabets and numbers from an input string.

str_val = "Emma25 is Data scientist50 and AI Expert"
print("The original string is : " + str_val)

result = []
temp = str_val.split()

for item in temp:
    if any(char.isalpha() for char in item) and any(char.isdigit() for char in item):
        result.append(item)

print("Displaying words with alphabets and numbers")
for i in result:
    print(i)
