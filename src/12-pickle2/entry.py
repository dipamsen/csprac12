import pickle

print("Students Data Entry")
print()

file = open("students.dat", "wb")
count = 0
run = True
while run:
    name = input("Enter name: ")
    roll = int(input("Enter roll no: "))
    mark = int(input("Enter marks: "))
    obj = {"name": name, "roll": roll, "mark": mark}
    pickle.dump(obj, file)
    count += 1
    print()
    run = input("Add more? (y/n) ") == "y"

print(f"Successfully entered {count} entries to students.dat.")
file.close()
