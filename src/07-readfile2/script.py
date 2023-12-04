upper = 0
lower = 0
vowel = 0
conso = 0

vowellist = "aeiou"

with open("./article.txt") as f:
    data = f.read()
    for char in data:
        if char.isupper():
            upper += 1
        if char.islower():
            lower += 1
        if char.isalpha():
            if char.lower() in vowellist:
                vowel += 1
            else:
                conso += 1

    print("Total vowels:", vowel)
    print("Total consonants:", conso)
    print("Total uppercase:", upper)
    print("Total lowercase:", lower)
