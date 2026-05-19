# Python Chapter 9 - File Handling
# Solutions


# 1. Write data into file
f = open("demo.txt", "w")
f.write("Hello Python")
f.close()


# 2. Read file
f = open("demo.txt", "r")
print(f.read())
f.close()


# 3. Append text
f = open("demo.txt", "a")
f.write("\nWelcome")
f.close()


# 4. Read first line
f = open("demo.txt", "r")
print(f.readline())
f.close()


# 5. Read all lines
f = open("demo.txt", "r")
print(f.readlines())
f.close()


# 6. Count lines
f = open("demo.txt", "r")
lines = f.readlines()
print(len(lines))
f.close()


# 7. Count words
f = open("demo.txt", "r")
words = f.read().split()
print(len(words))
f.close()


# 8. Copy file contents
f1 = open("demo.txt", "r")
f2 = open("copy.txt", "w")

f2.write(f1.read())

f1.close()
f2.close()


# 9. Using with statement
with open("demo.txt", "r") as f:
    print(f.read())


# 10. Store student details
with open("student.txt", "w") as f:
    f.write("Name: Sai\nMarks: 90")
