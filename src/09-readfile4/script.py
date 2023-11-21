f = open("article.txt")
l = ' '

while l:
  l = f.readline()
  if l.startswith("T"):
    print(l.strip())
