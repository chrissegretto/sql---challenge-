-- List the following details of each employee: employee number, last name, first name, sex, and salary.
select emp.emp_no, last_name, first_name, sex, salary from employees as emp 
join salaries as sal 
on emp.emp_no = sal.emp_no 
select * from employees 

-- List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date from employees 
where hire_date between '1986-01-01' and '1986-12-31'

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
Select dep.dept_no, dept_name, dm.emp_no, last_name,first_name 
from departments as dep 
join dept_manager as dm 
on dep.dept_no = dm.dept_no 
join employees as emp 
on emp.emp_no = dm.emp_no;

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
Select emp.emp_no, last_name, first_name, dept_name
from departments as dep 
join dept_emp as de 
on dep.dept_no = de.dept_no 
join employees as emp 
on emp.emp_no = de.emp_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name , sex 
from employees where first_name = 'Hercules' and last_name like 'B%';


-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
select emp.emp_no, last_name, first_name, dept_name 
from departments as dep 
join dept_emp as de 
on dep.dept_no = de.dept_no 
join employees as emp 
on emp.emp_no = de.emp_no 
where dept_name = 'Sales'; 


-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select emp.emp_no, last_name, first_name, dept_name
from departments as dep 
join dept_emp as de 
on dep.dept_no = de.dept_no 
join employees as emp 
on emp.emp_no = de.emp_no 
where dept_name = 'Sales' or dept_name = 'Development';

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(last_name) as frequency_last_name 
from employees 
group by last_name 
order by frequency_last_name desc 