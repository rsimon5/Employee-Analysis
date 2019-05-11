--Number 1
Select employees.emp_no, employees.first_name, employees.last_name,
		employees.gender, salaries.salary
from salaries, employees
where employees.emp_no = salaries.emp_no
Order by employees.emp_no ASC;
--Number 2
Select first_name, last_name, hiredate
from employees
where hiredate like '1986-%'
order by emp_no ASC;
--Number 3) List the manager of each department with the following information: 
--department number, department name, the manager's employee number, 
--last name, first name, and start and end employment dates.
Select departments.dept_no, departments.dept_name, dept_manager.emp_no,
		employees.last_name, employees.first_name, dept_manager.from_date, dept_manager.to_date
from departments
inner join dept_manager on departments.dept_no = dept_manager.dept_no
inner join employees on dept_manager.emp_no = employees.emp_no
--Number 4) List the department of each employee with the following information
--: employee number, last name, first name, and department name.
Select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
inner join employees on dept_emp.emp_no = employees.emp_no
inner join departments on departments.dept_no = dept_emp.dept_no
Order by dept_emp.emp_no ASC;
--Number 5)  List all employees whose first name is "Hercules" and 
--last names begin with "B."
Select first_name, last_name from employees
where first_name='Hercules' and last_name like 'B%'
Order by last_name ASC;
--Number 6) List all employees in the Sales department, 
--including their employee number, last name, first name, and department name
Select dept_emp.emp_no, employees.last_name, employees.first_name, 
		departments.dept_name
from departments
inner join dept_emp on dept_emp.dept_no=departments.dept_no
inner join employees on dept_emp.emp_no=employees.emp_no
where dept_name='Sales'
Order by dept_emp.emp_no ASC;
--Number 7) List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
Select dept_emp.emp_no, employees.last_name, employees.first_name, 
		departments.dept_name
from departments
inner join dept_emp on dept_emp.dept_no=departments.dept_no
inner join employees on dept_emp.emp_no=employees.emp_no
where dept_name='Sales' or dept_name='Development'
Order by dept_emp.emp_no ASC;
--Number 8) In descending order, list the frequency count of employee 
--last names, i.e., how many employees share each last name.
Select last_name, count(last_name) from employees
group by last_name
order by count DESC;


--Bonus
Select E.Emp_no, titles.Emp_no, E.first_name, E.last_name
from Employees as E 
inner join titles on titles.emp_no=E.emp_no
where E.emp_no=499942
