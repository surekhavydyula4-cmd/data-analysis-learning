# Python Chapter 7 - Dictionaries 
# Solutions

# 1. Create dictionary
d = {
    'name': ['Surekha', 'Sai'],
    'Phno': [63083829120, 2732273237]
}

print("Original Dictionary:")
print(d)

# 2. Access value using key
d = {
    'name': ['Surekha', 'Sai'],
    'Phno': [63083829120, 2732273237]
}
print("Access name:")
print(d['name'])

# 3. Add new key-value pair
d = {
    'name': ['Surekha', 'Sai'],
    'Phno': [63083829120, 2732273237]
}
d.update({'Id': [3, 5]})
print("After adding Id:")
print(d)

# 4. Modify value inside list 
d = {
    'name': ['Surekha', 'Sai'],
    'Phno': [63083829120, 2732273237]
}
d['name'][0] = 'Suri'
print("After modifying first name:")
print(d)

# 5. Remove a key using pop()
d = {
    'name': ['Surekha', 'Sai'],
    'Phno': [63083829120, 2732273237]
}
d.pop('name')
print("After pop('name'):")
print(d)

# 6. Delete a key using del
d = {
    'name': ['Surekha', 'Sai'],
    'Phno': [63083829120, 2732273237]
}
del d['Id']
print("After deleting 'Id':")
print(d)

# 7. Print all keys
d = {
    'name': ['Surekha', 'Sai'],
    'Phno': [63083829120, 2732273237]
}
print("Keys:")
print(d.keys())

# 8. Print all values
d = {
    'name': ['Surekha', 'Sai'],
    'Phno': [63083829120, 2732273237]
}
print("Values:")
print(d.values())

# 9. Print all items
d = {
    'name': ['Surekha', 'Sai'],
    'Phno': [63083829120, 2732273237]
}
print("Items:")
print(d.items())

# 10. Loop through dictionary
d = {
    'name': ['Surekha', 'Sai'],
    'Phno': [63083829120, 2732273237]
}
print("Looping through dictionary:")
for j, k in d.items():
    print(j, "\t", k)
