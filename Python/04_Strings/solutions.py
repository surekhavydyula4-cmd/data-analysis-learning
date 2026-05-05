# Python Chapter 4 - Strings
# Solutions

# 1. Print first and last character of a string
s = input()
print(s[0])
print(s[-1])


# 2. Reverse a string
s = input()
print(s[::-1])
# alternative:
# print("".join(reversed(s)))


# 3. Check if a string is palindrome
s = input()
if s == s[::-1]:
    print("Palindrome")
else:
    print("Not Palindrome")


# 4. Count vowels in a string
s = input().lower()
vowels = "aeiou"
count = 0

for ch in s:
    if ch in vowels:
        count += 1

print(count)


# 5. Count consonants in a string
s = input().lower()
vowels = "aeiou"
count = 0

for ch in s:
    if ch.isalpha() and ch not in vowels:
        count += 1

print(count)


# 6. Convert string to uppercase and lowercase
s = input()
print(s.upper())
print(s.lower())


# 7. Replace spaces with underscores
s = input()
print(s.replace(" ", "_"))


# 8. Count occurrence of a character
s = input()
ch = input()
print(s.count(ch))


# 9. Remove all vowels from a string
s = input()
vowels = "aeiouAEIOU"
result = ""

for ch in s:
    if ch not in vowels:
        result += ch

print(result)


# 10. Find length of string without using len()
s = input()
count = 0

for ch in s:
    count += 1

print(count)
