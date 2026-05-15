# Python Chapter 8 - Functions
# Solutions


# 1. Function to print message
def message():
    print("Hello Python")

message()


# 2. Function to add two numbers
def add(a, b):
    return a + b

print(add(10, 20))


# 3. Function to find square
def square(n):
    return n * n

print(square(5))


# 4. Function with default argument
def greet(name="Guest"):
    print("Hello", name)

greet()
greet("Surekha")


# 5. Function using keyword arguments
def student(name, age):
    print(name, age)

student(age=22, name="Suri")


# 6. Maximum of two numbers
def maximum(a, b):
    if a > b:
        return a
    return b

print(maximum(10, 25))


# 7. Function using *args
def total(*nums):
    print(sum(nums))

total(1, 2, 3, 4)


# 8. Recursive factorial function
def factorial(n):
    if n == 1:
        return 1
    return n * factorial(n - 1)

print(factorial(5))


# 9. Lambda function
square = lambda x: x * x

print(square(6))


# 10. Even or odd function
def check(n):
    if n % 2 == 0:
        print("Even")
    else:
        print("Odd")

check(7)
