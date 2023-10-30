#import "@preview/tablex:0.0.6": tablex

#let project(school: "", title: "", author: "", roll: 0, year: "", class: "", body) = {
  // Set the document's basic properties.
  set document(author: (author,), title: title)
  set page(
    margin: (bottom: 100pt),
    background: rect(width: 90%, height: 90%),
    footer: [
      #locate(loc => {
        if (counter(page).at(loc).at(0) > 1) [
          #set text(18pt)
          #h(1fr) #sym.dash.em #counter(page).display() #sym.dash.em #h(1fr)
        ]
      })
    ],
  )
   
  let sans-font = "Myanmar Text"
   
  // Set body font family.
  set text(font: sans-font, lang: "en", 14pt, hyphenate: false)
  show raw: set text(font: ("Roboto Mono", "DejaVu Sans Mono"))
  show heading: set text(font: sans-font)
  set par(justify: true)
   
  {
    set align(center)
    set text(16pt)
     
    image("../images/aislogo.jpg", width: 80pt)
    v(2em, weak: true)
    text(upper(school), size: 20pt, weight: 700, fill: blue.darken(40%))
    v(2em)
    text(title, 36pt, weight: 700)
    v(2em)
    text(underline(upper("Academic Year: " + year)), 16pt, weight: 700)
    v(4.5em)
    h(0.5fr)
    block(align(left)[
      #text(fill: blue.darken(40%), 1.2em)[*Submitted by:*]
       
      #grid(
        columns: 2,
        column-gutter: 1.7em,
        row-gutter: 0.65em,
        [Name:],
        [#author #place(line(length: 120pt), dy: 3pt)],
        [Class:],
        [#class #place(line(length: 120pt), dy: 3pt)],
        [Roll No.:],
        [#roll #place(line(length: 120pt), dy: 3pt)],
      )
    ])
  }
   
   
   
  v(2.4fr)
  pagebreak()
   
  //  Certificate
  {
    set align(center)
    text(font: "Old English Text MT", 72pt)[Certificate]
    set par(leading: 1.3em)
     
    let inp(it) = {
      strong(underline(it))
    }
     
    let txt = [This is to certify that #inp(author), student of Class XII, #inp(school) has
      completed the PRACTICAL FILE during the academic year #inp(year) towards partial
      fulfilment of credit for the Computer Science practical evaluation of CBSE and
      submitted a satisfactory report, as compiled in the following pages, under my
      supervision.]
    v(4em, weak: true)
    text(txt, size: 22pt)
    // todo - signature fields
  }
  pagebreak()
   
  // Index
  // outline(depth: 3, indent: true)
  align(center, text("Index", size: 48pt, weight: 700))
  v(3em, weak: true)
  locate(loc => {
    set text(12pt)
    let qs = query(metadata, loc)
    tablex(
      columns: (30pt, 1fr, 30pt, 70pt, 60pt),
      align: (x, y) => {
        if (x == 0 or y == 0 or x == 2 or x == 3) {
          center + horizon
        } else {
          left + horizon
        }
      },
      map-cells: cell => {
        if (cell.y == 0) {
          set align(center)
          strong(cell.content)
        } else {
          cell
        }
      },
      [Sr.\ No.],
      [Program],
      [Pg.\ No.],
      [Date],
      [Signature],
      ..qs.map(q => {
        (
          [#str(q.value.number)],
          [#q.value.description],
          [#q.location().page()],
          [#q.value.date.display("[day]/[month]/[year]")],
          [],
        )
      }).flatten(),
    )
  })
   
  pagebreak()
   
   
  // Main body.
   
  body
}