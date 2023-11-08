f = open("article.txt")

while True:
  l = f.readline()
  if l == '':
    break
  if l.startswith("T"):
    print(l.strip())
