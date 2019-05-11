Create Table departments (
	dept_no varchar(30) not null primary key,
	dept_name varchar(30) not null	
)
	
Create Table dept_emp (
	emp_no int not null,
	dept_no varchar(30) not null,
	foreign key (dept_no) references departments(dept_no),
	from_date varchar not null,
	to_date varchar not null
)

Create Table dept_manager (
	dept_no varchar(30) not null,
	emp_no int not null,
	foreign key (dept_no) references departments(dept_no),
	from_date varchar(30) not null,
	to_date varchar(30) not null
)

Create Table employees (
	emp_no int not null primary key,
	birth_date varchar(30) not null,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	gender varchar(30) not null,
	hiredate varchar(30) not null
)

alter table dept_emp 
	add foreign key (emp_no) references employees(emp_no)
	
alter table dept_manager 
	add foreign key (emp_no) references employees(emp_no)

Create Table salaries (
	emp_no int not null,
	foreign key (emp_no) references employees(emp_no),
	salary int not null,
	from_date varchar(30) not null,
	to_date varchar(30) not null
)

Create Table titles (
	emp_no int not null,
	foreign key (emp_no) references employees(emp_no),
	title varchar not null,
	from_date varchar(30) not null,
	to_date varchar(30) not null
)



