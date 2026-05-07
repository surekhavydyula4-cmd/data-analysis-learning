# Python Chapter 5 - Lists
# Questions + Answers


# 1. Create a list and print all elements
lst = [10, 20, 30, 40, 50]

for i in lst:
    print(i)


# 2. Print first and last element of a list
lst = [1, 2, 3, 4, 5]

print(lst[0])
print(lst[-1])


# 3. Find length of a list without using len()
lst = [10, 20, 30, 40]
count = 0

for i in lst:
    count += 1

print(count)


# 4. Find maximum element in a list
lst = [4, 7, 1, 9, 2]
max_num = lst[0]

for i in lst:
    if i > max_num:
        max_num = i

print(max_num)


# 5. Find minimum element in a list
lst = [4, 7, 1, 9, 2]
min_num = lst[0]

for i in lst:
    if i < min_num:
        min_num = i

print(min_num)


# 6. Find sum of all elements in a list
lst = [1, 2, 3, 4, 5]
total = 0

for i in lst:
    total += i

print(total)


# 7. Find average of elements in a list
lst = [10, 20, 30, 40]
total = 0

for i in lst:
    total += i

avg = total / len(lst)

print(avg)


# 8. Reverse a list
lst = [1, 2, 3, 4, 5]

print(lst[::-1])


# 9. Sort a list in ascending order
lst = [5, 2, 1, 4, 3]

lst.sort()

print(lst)


# 10. Remove duplicate elements from a list
lst = [1, 2, 2, 3, 4, 4, 5]

unique = []

for i in lst:
    if i not in unique:
        unique.append(i)

print(unique)
