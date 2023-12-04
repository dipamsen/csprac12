import csv

f = open("players.csv", "w", newline="")
writer = csv.writer(f)
writer.writerow(["name", "score"])
for i in range(10):
    print("Player", i + 1)
    name = input("Enter Name: ")
    score = int(input("Enter Score: "))
    writer.writerow([name, score])

f.close()

# -------------------------

print('\n' * 3)
print("Player Search")
search = input("Enter name: ")
file = open("players.csv", newline="")
rdr = csv.reader(file)
for player in rdr:
    name, score = player
    if name == search:
        print("Found player")
        print(f"{name} - Score: {score}")
        break
else:
    print("Did not find any player matching",
          search)
