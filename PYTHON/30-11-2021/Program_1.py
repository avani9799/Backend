# Print characters from a string that are present at an even index number
# Write a program to accept a string from the user and display characters that are present at an even index
# number.

str_val = input("Enter a string\n")
modified_string = str_val[::2]
print(modified_string)