f = open("article.txt")

while True:
  l = f.readline()
  if l == '':
    break
  words = l.split(" ")
  print("#".join(words))
