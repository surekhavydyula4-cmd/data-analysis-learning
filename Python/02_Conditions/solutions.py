# Python Chapter 2 - Conditions
# Solutions

# 1. Check if a number is positive, negative, or zero
num = int(input())
if num > 0:
    print("Positive")
elif num < 0:
    print("Negative")
else:
    print("Zero")


# 2. Check if a number is even or odd
num = int(input())
if num % 2 == 0:
    print("Even")
else:
    print("Odd")


# 3. Find greater of two numbers
n1 = int(input())
n2 = int(input())

if n1 > n2:
    print(n1, "is greater")
else:
    print(n2, "is greater")


# 4. Check voting eligibility
age = int(input())

if age < 0:
    print("Invalid age")
else:
    if age >= 18:
        print("Eligible")
    else:
        print("Not Eligible")


# 5. Check leap year
yr = int(input())

if yr < 0:
    print("Enter a valid year")
else:
    if (yr % 4 == 0 and yr % 100 != 0) or yr % 400 == 0:
        print("Leap Year")
    else:
        print("Not Leap Year")


# 6. Greatest of three numbers
n1 = int(input())
n2 = int(input())
n3 = int(input())

if n1 >= n2 and n1 >= n3:
    print(n1)
elif n2 >= n1 and n2 >= n3:
    print(n2)
else:
    print(n3)


# 7. Check vowel or consonant
s = input().lower()
vowels = "aeiou"

if len(s) == 1:
    if s in vowels:
        print("Vowel")
    else:
        print("Consonant")
else:
    print("Enter single character")


# 8. Check divisibility by 5 and 11
num = int(input())

if num % 5 == 0 and num % 11 == 0:
    print("Divisible by both 5 and 11")
elif num % 5 == 0:
    print("Only divisible by 5")
elif num % 11 == 0:
    print("Only divisible by 11")
else:
    print("Neither")


# 9. Assign grade based on marks
marks = int(input())

if marks >= 90:
    print("A")
elif marks >= 75:
    print("B")
elif marks >= 50:
    print("C")
else:
    print("Fail")


# 10. Password check
pwd = input()

if pwd == "admin123":
    print("Access Granted")
else:
    print("Wrong Password")
