# Python Chapter 10 - Exception Handling
# Solutions


# 1. Division by zero
try:
    print(10/0)

except ZeroDivisionError:
    print("Cannot divide by zero")


# 2. Invalid input
try:
    n = int(input("Enter number: "))

except ValueError:
    print("Enter numbers only")


# 3. Try except
try:
    x = 5
    y = 0
    print(x/y)

except:
    print("Error occurred")


# 4. Try except else
try:
    num = int(input("Enter number: "))

except ValueError:
    print("Invalid input")

else:
    print("Valid input")


# 5. Finally block
try:
    print(10/2)

except:
    print("Error")

finally:
    print("Program ended")


# 6. Multiple exceptions
try:
    l=[1,2,3]
    print(l[5])

except IndexError:
    print("Index error")

except ValueError:
    print("Value error")


# 7. Raise exception
age=15

if age<18:
    raise Exception("Not eligible")


# 8. Custom exception
class AgeError(Exception):
    pass

try:
    age=15

    if age<18:
        raise AgeError

except AgeError:
    print("Age should be above 18")


# 9. Handle list index error
try:
    l=[10,20]

    print(l[3])

except IndexError:
    print("Invalid index")


# 10. Handle dictionary key error
try:
    d={'name':['Surekha','Sai','Cherry']}

    print(d['age'])

except KeyError:
    print("Key not found")
