# Python Chapter 3 - Loops
# Solutions

# 1. Print numbers from 1 to 10
for i in range(1, 11):
    print(i)


# 2. Print numbers from 10 to 1
for i in range(10, 0, -1):
    print(i)


# 3. Print even numbers from 1 to 20
for i in range(1, 21):
    if i % 2 == 0:
        print(i)


# 4. Print sum of numbers from 1 to n
num = int(input())

total = 0
for i in range(1, num + 1):
    total += i

print(total)


# 5. Print multiplication table of a number
num = int(input())

for i in range(1, 11):
    print(num, "x", i, "=", num * i)


# 6. Count digits in a number
num = int(input())

count = 0
while num > 0:
    count += 1
    num = num // 10

print(count)


# 7. Reverse a number
num = int(input())

temp = num
rev = 0

while temp > 0:
    r = temp % 10
    rev = (rev * 10) + r
    temp = temp // 10

print(rev)


# 8. Check if a number is palindrome
num = int(input())

temp = num
rev = 0

while temp > 0:
    r = temp % 10
    rev = (rev * 10) + r
    temp = temp // 10

if rev == num:
    print("Palindrome")
else:
    print("Not Palindrome")


# 9. Print factorial of a number
num = int(input())

fact = 1
for i in range(1, num + 1):
    fact *= i

print(fact)


# 10. Print star pattern
# *
# **
# ***
# ****
# *****

for i in range(1, 6):
    print("*" * i)
