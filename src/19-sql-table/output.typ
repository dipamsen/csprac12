#import "@preview/showybox:2.0.1": showybox

// #show: block.with(stroke: 1pt, inset: 1em, width: 100%, radius: 0.3em)
// #show: showybox
#set par(justify: false)
#show raw.where(lang: "sql"): i => {
  show raw.line: it => {
    if it.text.at(0) != "-" and it.text.at(0) != " " {
      "> " + it
    } else { 
      it
    }
  }
  i
}

#let a = ```sql
-- Add two more records to the table. 
INSERT INTO Employee 
    (Empno, Empname, Desig, Dept, Age, Place) 
    VALUES
    (6, "Abdul Ahmed", "CEO", "Quality", 47, "Aurangabad"),
    (7, "Priyam Sen", "Manager", "HRD", 41, "Kolkata");
```
#let b = ```
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0
```
#let c = ```sql
-- Modify the table structure by adding one more field namely date of joining.
ALTER TABLE Employee ADD doj DATE;
```
#let d = ```
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0
```
#let e = ```sql
-- Check for Null value in doj of any record.
SELECT * FROM Employee WHERE doj IS NULL;
```
#let f = [#set text(0.58em)
  ```
                +-------+---------------+-------------------+----------+------+------------+------+
                | Empno | Empname       | Desig             | Dept     | Age  | Place      | doj  |
                +-------+---------------+-------------------+----------+------+------------+------+
                |     1 | Rajesh Kumar  | General Manager   | HRD      |   42 | Hyderabad  | NULL |
                |     2 | Sameer Sharma | Manager           | IT       |   38 | Bhopal     | NULL |
                |     3 | C R Menon     | Senior Manager    | Quality  |   36 | Chennai    | NULL |
                |     4 | Mahesh Arora  | Assistant Manager | Research |   45 | Bangalore  | NULL |
                |     5 | Ramesh Murthy | CPO               | IT       |   44 | Ahmedabad  | NULL |
                |     6 | Abdul Ahmed   | CEO               | Quality  |   47 | Aurangabad | NULL |
                |     7 | Priyam Sen    | Manager           | HRD      |   41 | Kolkata    | NULL |
                +-------+---------------+-------------------+----------+------+------------+------+
                ```
                #v(-0.9em)
                #set text((1/0.58)*1em)
                ```
                7 rows in set (0.00 sec)
                ```]

#showybox[#a #b][#c #d][#e #f]