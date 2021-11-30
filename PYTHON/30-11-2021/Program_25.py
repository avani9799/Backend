# Split a string on hyphens
# Write a program to split a given string on hyphens and display each substring.

str_val = "Emma-is-a-data-scientist"
print("Original String is:", str_val)

sub_strings = str_val.split("-")

print("Displaying each substring")
for i in sub_strings:
    print(i)
