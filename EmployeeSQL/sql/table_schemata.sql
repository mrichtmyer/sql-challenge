-- Delete tables if they already exist
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

CREATE TABLE "dept_emp" (
  "emp_no" int,
  "dept_no" char(4),
  "from_date" date,
  "to_date" date
);

CREATE INDEX "PK, FK" ON  "dept_emp" ("emp_no");

CREATE INDEX "PK,FK" ON  "dept_emp" ("dept_no");

CREATE TABLE "departments" (
  "dept_no" varchar(4),
  "dept_name" varchar(30),
  PRIMARY KEY ("dept_no")
);

CREATE TABLE "dept_manager" (
  "dept_no" char(4),
  "emp_no" int,
  "from_date" date,
  "to_date" date,
  PRIMARY KEY ("emp_no")
);

CREATE INDEX "FK" ON  "dept_manager" ("dept_no");

CREATE TABLE "employees" (
  "emp_no" int,
  "birth_date" date,
  "first_name" varchar(50),
  "last_name" varchar(50),
  "gender" char(1),
  "hire_date" date,
  PRIMARY KEY ("emp_no")
);

CREATE TABLE "salaries" (
  "emp_no" int,
  "salary" int,
  "from_date" date,
  "to_date" date,
  PRIMARY KEY ("emp_no")
);

CREATE TABLE "titles" (
  "emp_no" int,
  "title" varchar(50),
  "from_date" date,
  "to_date" date
);


-- QUERIES FOR TESTING
SELECT * FROM titles
