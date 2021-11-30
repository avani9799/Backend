# Create a string made of the first, middle and last character
# Write a program to create a new string made of an input string’s first, middle, and last character.

str1 = 'James'
print("Original String is", str1)

result = str1[0]

l = len(str1)
mi = int(l / 2)
result = result + str1[mi]
result = result + str1[l - 1]

print("New String:", result)