import csv

f = open("data.csv", "w", newline="")
writer = csv.writer(f)
writer.writerow(["userid", "password"])
while True:
    id = input("Enter User ID: ")
    pwd = input("Enter Password: ")
    writer.writerow([id, pwd])

    if input("More entries? (y/n) ") != "y":
        break

f.close()

# -------------------------

print('\n' * 2)
search = input("Enter User ID: ")
file = open("data.csv", newline="")
rdr = csv.reader(file)
for user in rdr:
    id, pwd = user
    if id == search:
        print(f"ID: {id}\t Password: {pwd}")
        break
else:
    print("Did not find any user matching",
          search)
