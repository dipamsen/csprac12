alpha = 0
upper = 0
lower = 0
digit = 0
space = 0
spchr = 0

with open("./article.txt") as f:
  data = f.read()
  for char in data:
    if char.isalpha():
      alpha += 1
    if char.isupper():
      upper += 1
    if char.islower():
      lower += 1
    if char.isdigit():
      digit += 1
    if char.isspace():
      space += 1
    if not char.isalnum() and not char.isspace():
      spchr += 1

  print("Total alphabets:", alpha)
  print("Total uppercase:", upper)
  print("Total lowercase:", lower)
  print("Total digits:", digit)
  print("Total spaces:", space)
  print("Total special characters:", spchr)
