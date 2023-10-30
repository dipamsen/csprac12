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

#let phead(md) = {
  pagebreak(weak: true)
  md
  align(center, text("Program " + str(md.value.number), weight: "bold", 42pt))
  v(2em, weak: true)
  text(md.value.description)
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
  )
} 

#phead(
  metadata(
    (
      number: 1,
      description: [Write a user defined function to accept a string as an input and to count and
        display the total number of times a character is present in a string.],
      date: datetime(year: 2023, month: 10, day: 25),
    ),
  ),
)

#program("../src/01-occurences/script.py")

#phead(
  metadata(
    (
      number: 2,
      description: [Write a program to compute the area of rectangle on the basis of length and
        breadth inputted by the user as the arguments to this function.],
      date: datetime(year: 2023, month: 10, day: 26),
    ),
  ),
)

#program("../src/02-area/script.py")

#phead(
  metadata(
    (
      number: 3,
      description: [
        Write a menu driven program using different functions for the following menu:
        1. Check no. is Palindrome or not
        2. Check no. is Armstrong or not
        3. Exit
      ],
      date: datetime(year: 2023, month: 10, day: 26),
    ),
  ),
)

#program("../src/03-menu/script.py")

#phead(
  metadata(
    (
      number: 4,
      description: [
        Write a program using the function to print the Fibonacci series up to $n$
        numbers.
      ],
      date: datetime(year: 2023, month: 10, day: 27),
    ),
  ),
)

#program("../src/04-fibonacci/script.py")

#phead(
  metadata(
    (
      number: 5,
      description: [Write a random number generator using function that generates random numbers
        between 1 to 6 (simulates a dice).],
      date: datetime(year: 2023, month: 10, day: 27),
    ),
  ),
)

#program("../src/05-dice/script.py")

#phead(
  metadata(
    (
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
    ),
  ),
)

#program("../src/06-readfile1/script.py")
#program("../src/06-readfile1/article.txt", title: [`article.txt`])
