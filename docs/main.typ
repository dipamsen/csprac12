#import "template.typ": *

#show: project.with(
  school: "Amicus International School, Bharuch",
  title: "Practical File\nof\nComputer Science (083)",
  author: "Dipam Sen",
  class: "XII (Science) - B",
  roll: " ",
  year: "2023-24",
)


#let program(md) = {
  md
   
   
  set text(18pt)
  align(center, text("Program " + str(md.value.number), weight: "bold", 42pt))
  v(3em, weak: true)
  text(md.value.description)
  v(3em, weak: true)
  strong("Program:")
  v(1em, weak: true)
  block(
    raw(read(md.value.file), lang: "python"),
    stroke: 1pt,
    inset: 1em,
    width: 100%,
  )
}


#program(
  metadata(
    (
      number: 1,
      description: [Write a user defined function to accept a string as an input and to count and
        display the total number of times a character is present in a string.],
      date: "2021-08-01",
      file: "../index.py",
    ),
  ),
)
