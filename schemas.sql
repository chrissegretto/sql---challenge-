CREATE TABLE departments (
  dept_no VARCHAR(30) NOT NULL,
  dept_name VARCHAR(30) NOT NULL);
select * from departments; 

CREATE TABLE dept_emp (
  emp_no INTEGER NOT NULL,
  dept_no VARCHAR(10) NOT NULL);
select * from dept_emp; 

CREATE TABLE employees (
  emp_no INTEGER NOT NULL,
  emp_title_id VARCHAR(10) NOT NULL,
  birth_date DATE NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL, 
  sex VARCHAR(2) NOT NULL, 
  hire_date DATE NOT NULL);
select * from employees; 

drop table dept_manager
CREATE TABLE dept_manager (
  dept_no VARCHAR(10) NOT NULL,
  emp_no INTEGER NOT NULL);
select * from dept_manager; 

CREATE TABLE salaries (
  emp_no INTEGER NOT NULL,
  salary INTEGER NOT NULL);
select * from salaries ; 

drop table titles
CREATE TABLE titles (
  title_id VARCHAR NOT NULL,
  title VARCHAR NOT NULL);
select * from titles ; 
