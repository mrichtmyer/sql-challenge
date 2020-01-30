![](EmployeeSQL/images/database.jpg)

# Sample Company Database
SQL Challenge | RU Bootcamp
Matthew Richtmyer | Jan 29, 2020

## Purpose
* Explore PostgreSQL and create relational databases

## Entity Relational Database Diagram
An ERD diagram was made to organize the design of the database. Some key considerations made for this design:
  * Composite Primary Keys were used for both the dept_emp and titles Tables because neither table had purely unique primary keys. This occurs since employees have the flexibility of moving roles within the company, so a single employee number may reference multiple titles and department numbers. The composite key combines both the employee id and a secondary key (either department number or title) to create a unique primary key
  * The Employee Number was used as a one to one cardinality between many tables since for each employee number there should only be one employee associated with it.
  
[ERD](https://github.com/mrichtmyer/sql-challenge/blob/master/EmployeeSQL/images/ERD.pdf)

The ERD was created using Lucid Charts. Some really helpful tutorials for ERDs and Lucid Charts are below:

[Lucid Charts Part 1](https://www.youtube.com/watch?v=QpdhBUYk7Kk)

[Lucid Charts Part 2](https://www.youtube.com/watch?v=-CuY5ADwn24)

## Table Schema
* All data was imported on the SQL Shell. After connecting to the database, the following command was used:
  * \COPY salaries FROM 'file_path' DELIMITER ',' CSV HEADER;
* [Table Schema](https://github.com/mrichtmyer/sql-challenge/blob/master/EmployeeSQL/sql/table_schemata.sql)

## Sample Queries
* All queries were able successful, with queries using techniques like inner joins and group by's to organize data before displaying
* [Queries](https://github.com/mrichtmyer/sql-challenge/blob/master/EmployeeSQL/sql/query.sql)
