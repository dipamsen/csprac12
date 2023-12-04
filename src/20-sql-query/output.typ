#import "@preview/showybox:2.0.1": showybox

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
-- List the students whose department is “CSE”.
SELECT * FROM Student WHERE Dept = "CSE";
```
#let b = ```
+--------+--------+------+------+-------+
| Reg_No | Sname  | Age  | Dept | Class |
+--------+--------+------+------+-------+
| C1001  | Sneha  |   20 | CSE  | CS1   |
| C1002  | Lithya |   19 | CSE  | CS2   |
+--------+--------+------+------+-------+
2 rows in set (0.00 sec)
```
#let c = ```sql
-- List all the students of age 20 and more in ME department.
SELECT * FROM Student 
    WHERE Age >= 20 
    AND Dept = "ME";
```
#let d = ```
+--------+--------+------+------+-------+
| Reg_No | Sname  | Age  | Dept | Class |
+--------+--------+------+------+-------+
| M1002  | Akaash |   20 | ME   | ME2   |
+--------+--------+------+------+-------+
1 row in set (0.00 sec)
```
#let e = ```sql
--  List the students department wise. 
SELECT Dept, COUNT(*) FROM Student 
    GROUP BY Dept;
```
#let f = ```
+------+----------+
| Dept | COUNT(*) |
+------+----------+
| ME   |        2 |
| CSE  |        2 |
| ECE  |        2 |
| EEE  |        1 |
+------+----------+
4 rows in set (0.00 sec)
```
#let g = ```sql
-- Modify the class ME2 to ME1. 
UPDATE Student SET Class = "ME1"
    WHERE Class = "ME2";
```
#let h = ```
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0
```
#let i = ```sql
SELECT * FROM Student;
```
#let j = [
    #set text(0.9em)
    ```
+--------+--------+------+------+-------+
| Reg_No | Sname  | Age  | Dept | Class |
+--------+--------+------+------+-------+
| M1001  | Harish |   19 | ME   | ME1   |
| M1002  | Akaash |   20 | ME   | ME1   |
| C1001  | Sneha  |   20 | CSE  | CS1   |
| C1002  | Lithya |   19 | CSE  | CS2   |
| E1001  | Ravi   |   20 | ECE  | EC1   |
| E1002  | Leena  |   21 | EEE  | EE1   |
| E1003  | Rose   |   20 | ECE  | EC2   |
+--------+--------+------+------+-------+
7 rows in set (0.00 sec)
```]

#showybox(breakable: true)[#a #b][#c #d][#e #f][#g #h #i #j]