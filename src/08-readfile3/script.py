f = open("article.txt")
l = " "
while l:
  l = f.readline()
  words = l.split(" ")
  print("#".join(words), end="")
f.close()
