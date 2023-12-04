import pickle

roll = int(input("Enter roll number to search: "))
found = False
try:
    file = open("students.dat", "rb")
    while True:
        stu = pickle.load(file)
        if stu["roll"] == roll:
            print("Found:")
            print(stu["name"],
                  stu["roll"],
                  sep="\t")
            found = True
            break
except EOFError:
    if not found:
        print(f"Could not find any entries"
              " for roll no. {roll}.")
    file.close()
except FileNotFoundError:
    print("Could not find binary file.")
