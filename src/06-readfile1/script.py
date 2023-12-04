alpha = 0
upper = 0
lower = 0
digit = 0
space = 0
spchr = 0

f = open("./article.txt")
data = f.read()
for ch in data:
    if ch.isalpha():
        alpha += 1
    if ch.isupper():
        upper += 1
    if ch.islower():
        lower += 1
    if ch.isdigit():
        digit += 1
    if ch.isspace():
        space += 1
    if not ch.isalnum() and not ch.isspace():
        spchr += 1

print("Total alphabets:", alpha)
print("Total uppercase:", upper)
print("Total lowercase:", lower)
print("Total digits:", digit)
print("Total spaces:", space)
print("Total special characters:", spchr)

f.close()
