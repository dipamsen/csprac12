CREATE TABLE Employee (
    Empno INT PRIMARY KEY,
    Empname VARCHAR(255),
    Desig VARCHAR(50),
    Dept VARCHAR(10),
    Age INT,
    Place VARCHAR(50)
);

INSERT INTO Employee VALUES 
    (1, "Rajesh Kumar", "General Manager", "HRD", 42, "Hyderabad"), 
    (2, "Sameer Sharma", "Manager", "IT", 38, "Bhopal"), 
    (3, "C R Menon", "Senior Manager", "Quality", 36, "Chennai"), 
    (4, "Mahesh Arora", "Assistant Manager", "Research", 45, "Bangalore"), 
    (5, "Ramesh Murthy", "CPO", "IT", 44, "Ahmedabad");