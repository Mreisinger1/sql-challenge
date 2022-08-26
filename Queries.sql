--1. List the following details of each employee: employee number, last name, first name, sex, and salary. 
select employees.emp_no, employees.emp_title_id, employees.last_name, employees.first_name, employees.gender, salaries.salary
from employees
join salaries ON employees.emp_no = salaries.emp_no
;

--2. last name, first name and hire date for employees hired in 1986. 
select first_name, last_name, hire_date
from employees 
where extract (year from hire_date) = 1986
;

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name
select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from dept_manager
; 

--4. List the department of each employee with the following information: employee number, last name, first name, and department name
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_emp ON employees.emp_no = dept_emp.emp_no
join departments ON dept_emp.dept_no = departments.dept_no
;

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name LIKE 'B'
;

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
select emp_no, first_name, last_name, dept_name
from employees AND departments 
where dept_no = 'd007'
;

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select emp_no, last_name, first_name, dept_name
from employees and departments 
where dept_no = 'd007' or dept_no = 'd005'
;

--8. List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
select last_name, count(last_name) as Frequency
from employees
group by last_name
order by frequency desc
;

