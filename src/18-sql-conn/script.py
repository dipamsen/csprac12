import mysql.connector as sql

conn = sql.connect(user="root",
                   host="localhost",
                   passwd="password",
                   database="test")
curr = conn.cursor()


def insert(ID, name, age, dept):
    curr.execute(
        """INSERT INTO Emp (id, name, age, dept)
           VALUES (%s, %s, %s, %s)""",
        (ID, name, age, dept))
    conn.commit()


def display():
    curr.execute("SELECT * FROM Emp")
    print("ID\tName\t\tDept\tAge")
    print("=" * 40)
    data = curr.fetchall()
    for emp in data:
        print(*emp, sep="\t")


while True:
    print()
    print("(1) Show employees",
          "(2) Insert employee", "(3) Exit")
    choice = int(
        input("Enter your choice: (1/2/3) "))
    if choice == 1:
        display()
    elif choice == 2:
        name = input("Name: ")
        ID = int(input("ID: "))
        dept = input("Dept: ")
        age = int(input("Age: "))
        insert(ID, name, age, dept)
        print("Successfully inserted employee.")
    elif choice == 3:
        break
