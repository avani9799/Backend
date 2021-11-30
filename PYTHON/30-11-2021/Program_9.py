# Turn every item of a list into its square
# Given a list of numbers. write a program to turn every item of a list into its square.

number_val = [1, 2, 3, 4, 5, 6, 7]
result = []
for i in number_val:
    result.append(i * i)
print(result)