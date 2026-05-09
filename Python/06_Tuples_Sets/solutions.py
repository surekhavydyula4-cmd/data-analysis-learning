# Python Chapter 6 - Tuples & Sets
# Solutions


# 1. Create a tuple and print all elements
t = (1, 2, 3, 4)

for i in t:
    print(i)


# 2. Print first and last element
t = (10, 20, 30, 40)

print(t[0])
print(t[-1])


# 3. Find length of tuple
t = (1, 2, 3, 4)

print(len(t))


# 4. Count occurrence of element
t = (1, 2, 2, 3, 2)
element=int(input()

print(t.count(element))


# 5. Find index of element
t = (10, 20, 30, 40)
element=int(input()
print(t.index(element))


# 6. Tuple unpacking
t = (1, 2, 3)

a, b, c = t

print(a)
print(b)
print(c)


# 7. Create a set and print elements
s = {1, 2, 3, 4}

for i in s:
    print(i)


# 8. Add elements to set
s = {1, 2, 3}

s.add(4)

print(s)


# 9. Remove element using remove()
s = {1, 2, 3, 4}

s.remove(3)

print(s)


# 10. Remove element using discard()
s = {1, 2, 3, 4}

s.discard(2)

print(s)


# 11. Union of two sets
s1 = {1, 2, 3}
s2 = {3, 4, 5}

print(s1.union(s2))


# 12. Intersection of two sets
s1 = {1, 2, 3}
s2 = {2, 3, 4}

print(s1.intersection(s2))


# 13. Difference between two sets
s1 = {1, 2, 3}
s2 = {2, 3, 4}

print(s1.difference(s2))


# 14. Remove duplicates using set
l = [1, 2, 2, 3, 4, 4]

print(list(set(l)))


# 15. Check element exists in set
s = {1, 2, 3, 4}
e=int(input())
if e in s:
    print("Exists")
else:
    print("Not Exists")


# 16. Find maximum element in set
s = {4, 7, 2, 9}

print(max(s))


# 17. Find minimum element in set
s = {4, 7, 2, 9}

print(min(s))


# 18. Find sum of elements in set
s = {1, 2, 3, 4}

print(sum(s))


# 19. Convert tuple to list
t = (1, 2, 3)

print(list(t))


# 20. Convert list to tuple
l = [1, 2, 3]

print(tuple(l))
