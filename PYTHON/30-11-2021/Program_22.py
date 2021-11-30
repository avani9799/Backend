# Arrange string characters such that lowercase letters should come first
# Given string contains a combination of the lower and upper case letters. Write a program to arrange the
# characters of a string so that all lowercase letters should come first.

str_val = "PYnAtivE"
print('Original String:', str_val)
lower = []
upper = []
for char in str_val:
    if char.islower():
        lower.append(char)
    else:
        upper.append(char)

result = ''.join(lower + upper)
print('Result:', result)