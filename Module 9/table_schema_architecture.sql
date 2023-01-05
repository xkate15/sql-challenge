-- DATA Engineering

CREATE TABLE Employees (
    emp_no INT   NOT NULL,
    emp_title VARCHAR(20)   NOT NULL,
    birth_date DATE   NOT NULL,
    first_name VARCHAR(50)   NOT NULL,
    last_name VARCHAR(50)   NOT NULL, 
    sex VARCHAR(20)   NOT NULL, 
    hire_date DATE   NOT NULL, 
         PRIMARY KEY (emp_no)
    );
    
SELECT * FROM Employees;


CREATE TABLE Departments (
    dept_no VARCHAR(10)   NOT NULL, 
    dept_name VARCHAR(30)   NOT NULL, 
         PRIMARY KEY (dept_no)
    );
    
SELECT * FROM Departments;


CREATE TABLE Dept_emp (
    emp_no INT   NOT NULL,
    dept_no VARCHAR(10)   NOT NULL,
         PRIMARY KEY (emp_no)
    );
    
SELECT * FROM Dept_emp;


CREATE TABLE Dept_manager (
    dept_no VARCHAR(20)   NOT NULL, 
    emp_no INT   NOT NULL,
         PRIMARY KEY (emp_no)
    );
    
SELECT * FROM Dept_manager;


CREATE TABLE Salaries (
    emp_no INT   NOT NULL,
    salary  INT   NOT NULL, 
         PRIMARY KEY (emp_no)
    );
    
SELECT * FROM Salaries;


CREATE TABLE Titles (
    emp_no INT   NOT NULL, 
    title VARCHAR(20)   NOT NULL, 
          PRIMARY KEY (emp_no)
    );
    
SELECT * FROM Titles;


ALTER TABLE Employees ADD CONSTRAINT "fk_employees_emp_title" FOREIGN KEY("emp_title")
REFERENCES Titles ("title_id");

ALTER TABLE Dept_emp ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES Employees ("emp_no");

ALTER TABLE Dept_emp ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES Departments ("depy_no");

ALTER TABLE Dept_manager ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES Departments ("dept_no");

ALTER TABLE Salaries ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES Employees ("emp_no");
                                
