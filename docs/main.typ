#import "template.typ": *

#show: project.with(
  school: "Amicus International School, Bharuch",
  title: "Practical File\nof\nComputer Science (083)",
  author: "Dipam Sen",
  class: "XII (Science) - B",
  roll: " ",
  year: "2023-24",
)
#set text(18pt)

#let phead(number: 0, description: [], date: datetime.today(), summary: []) = {
  summary = if summary.children.len() > 0 { summary } else { description } 
  pagebreak(weak: true)
  metadata(
    (number: number, description: description, date: date, summary: summary),
  )
  align(center, text("Program " + str(number), weight: "bold", 42pt))
  v(2em, weak: true)
  text(description)
  v(1em, weak: true)
}

#let program(file, title: "Program:") = {
  // set text(17pt)
  strong(title)
  set par(justify: false)
  v(1em, weak: true)
  block(
    raw(read(file), lang: file.split(".").at(-1)),
    stroke: 1pt,
    inset: 1em,
    width: 100%,
    radius: 0.3em,
  )
} 

#phead(
  number: 1,
  description: [Write a user defined function to accept a string as an input and to count and
    display the total number of times a character is present in a string.],
  date: datetime(year: 2023, month: 10, day: 25),
)

#program("../src/01-occurences/script.py")

#phead(
  number: 2,
  description: [Write a program to compute the area of rectangle on the basis of length and
    breadth inputted by the user as the arguments to this function.],
  date: datetime(year: 2023, month: 10, day: 26),
)

#program("../src/02-area/script.py")

#phead(
  number: 3,
  description: [
    Write a menu driven program using different functions for the following menu:
    1. Check no. is Palindrome or not
    2. Check no. is Armstrong or not
    3. Exit
  ],
  date: datetime(year: 2023, month: 10, day: 26),
)

#program("../src/03-menu/script.py")

#phead(
  number: 4,
  description: [
    Write a program using the function to print the Fibonacci series up to $n$
    numbers.
  ],
  date: datetime(year: 2023, month: 10, day: 27),
)
#program("../src/04-fibonacci/script.py")

#phead(
  number: 5,
  description: [Write a random number generator using function that generates random numbers
    between 1 to 6 (simulates a dice).],
  date: datetime(year: 2023, month: 10, day: 27),
)
#program("../src/05-dice/script.py")

#phead(
  number: 6,
  description: [Write a python program to read a file named “article.txt”, count and print the
    following: 
    #set enum(numbering: "(i)")
    + total alphabets 
    + total upper case alphabets
    + total lower case alphabets 
    + total digits 
    + total spaces 
    + total special characters],
  date: datetime(year: 2023, month: 10, day: 28),
)
#program("../src/06-readfile1/script.py")
#program("../src/06-readfile1/article.txt", title: [`article.txt`])

#phead(
  number: 7,
  description: [
    Read a text file and display the number of vowels/consonants/uppercase/lowercase
    characters in the file.
  ],
  date: datetime(year: 2023, month: 11, day: 8),
)

#program("../src/07-readfile2/script.py")
#program("../src/07-readfile2/article.txt", title: [`article.txt`])

#phead(
  number: 8,
  description: [Read a text file line by line and display each word separated by a \#.],
  date: datetime(year: 2023, month: 11, day: 12),
)
#program("../src/08-readfile3/script.py")
#program("../src/08-readfile3/article.txt", title: [`article.txt`])

#phead(
  number: 9,
  description: [Program to read and display those lines from the text file that starts with
    alphabet 'T'],
  date: datetime(year: 2023, month: 11, day: 13),
)

#program("../src/09-readfile4/script.py")
#program("../src/09-readfile4/article.txt", title: [`article.txt`])

#phead(
  number: 10,
  description: [Remove all the lines that contain the character 'a' in a file and write it to
    another file.],
  date: datetime(year: 2023, month: 11, day: 14),
)
#phead(
  number: 11,
  description: [Create a binary file with roll number and name. Search for a given roll number
    and display the name, if not found display appropriate message.],
)

#phead(
  number: 12,
  description: [Create a binary file with the roll no. name and marks. Input a roll number and
    update the marks.],
)

#phead(
  number: 13,
  description: [Write a program which adds any random five even numbers in a list that falls
    between the highest and lowest no. (Both highest the lowest numbers are accepted
    from the user)],
)

#phead(
  number: 14,
  description: [Write a program using python to get 10 players name and their score. Write the
    input in a csv file. Accept a player name using python. Read the csv file to
    display the name and the score. If the player name is not found give an
    appropriate message],
)

#phead(
  number: 15,
  description: [Create a CSV file by entering user-id and password, read and search the password
    for given user-id.],
)

#phead(
  number: 16,
  description: [Write a python program using function `PUSH(Arr)`, where `Arr` is a list of
    numbers. From this list push all numbers divisible by 5 into a stack implemented
    by using a list. Display the stack if it has at least one element, otherwise
    display appropriate error message.],
)

#phead(
  number: 17,
  description: [Write a python program using function `POP(Arr)`, where `Arr` is a stack
    implemented by a list of numbers. The function returns the value deleted from
    the stack.],
)

#phead(
  number: 18,
  description: [Write a python program to integrate MySQL with Python by inserting records to
    `EMP` table and displaying records.],
)

#phead(
  number: 19,
  description: [Create an Employee Table with the fields `Empno`, `Empname`, `Desig`, `Dept`,
    `Age` and `Place`. Enter five records into the table. 
    - Add two more records to the table.
    - Modify the table structure by adding one more field namely date of joining.
      (`doj`)
    - Check for `NULL` value in `doj` of any record.],
)

#phead(
  number: 20,
  summary: [Create Student table with following fields and enter data as given in the table
    below.],
  description: [
    Create Student table with following fields and enter data as given in the table
    below.
    #table(
      columns: 3,
      [Field],
      [Type],
      [Size],
      [`Reg_No`],
      `char`,
      [5],
      `Sname`,
      `varchar`,
      [15],
      `Age`,
      `int`,
      [2],
      `Dept`,
      `varchar`,
      [10],
      `Class`,
      `char`,
      [3],
    )
     
    #table(
      columns: 5,
      [Reg_No],
      [Sname],
      [Age],
      [Dept],
      [Class],
      [M1001],
      [Harish],
      [19],
      [ME],
      [ME1],
      [M1002],
      [Akash],
      [20],
      [ME],
      [ME2],
      [C1001],
      [Sneha],
      [20],
      [CSE],
      [CS1],
      [C1002],
      [Lithya],
      [19],
      [CSE],
      [CS2],
      [E1001],
      [Rat],
      [20],
      [ECE],
      [EC1],
      [E1002],
      [Leena],
      [21],
      [EEE],
      [EE1],
      [E1003],
      [Rose],
      [20],
      [ECE],
      [EC2],
    )
     
    #set enum(numbering: "(i)")
     
    Then, query the following: 
    + List the students whose department is “CSE”.
    + List all the students of age 20 and more in ME department.
    + List the students department wise. 
    + Modify the class ME2 to ME1.
  ],
)