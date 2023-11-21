file1 = open("article.txt")
file2 = open("output.txt", "w")

l = " "
while l:
  l = file1.readline()
  if "a" not in l:
    file2.write(l)

file2.close()
