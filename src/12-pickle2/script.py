import pickle

data = []
# data: {"name": "", "roll": 0, "mark": 0}
file = open("students.dat", "rb")
rno = int(input("Enter roll no to update: "))
found = False

while True:
    try:
        stu = pickle.load(file)
        if stu["roll"] == rno:
            found = True
            print("Found entry: ")
            print(stu["roll"],
                  stu["name"],
                  stu["mark"],
                  sep="\t")
            print()
            marks = int(
                input("Enter new marks: "))
            stu["mark"] = marks
        data.append(stu)
    except EOFError:
        break

if not found:
    print("No entry found for roll no", rno)
else:
    fw = open("students.dat", "wb")
    for stu in data:
        pickle.dump(stu, fw)
    print("Successfully updated students.dat.")
    fw.close()

file.close()
