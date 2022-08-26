create table employees (
		emp_no INT PRIMARY KEY NOT NULL,
		emp_title_id VARCHAR (40) NOT NULL,  
		birth_date DATE NOT NULL,
		first_name VARCHAR(35) NOT NULL, 
		last_name VARCHAR (35) NOT NULL, 
		sex VARCHAR (1) NOT NULL, 
		hire_date DATE NOT NULL
);

create table titles (
		title_id INT NOT NULL,
		title VARCHAR (7) NOT NULL, 
	
	foreign key (emp_no) references employess (emp_no)
);

create table departments (
		dept_no VARCHAR (8) PRIMARY KEY NOT NULL,
		dept_name VARCHAR (40) NOT NULL
);

create table dept_emp (
		emp_no INT NOT NULL, 
		dept_no VARCHAR (8) NOT NULL, 
	foreign key (emp_no) references employees (emp_no)
);

create table salaries( 
		emp_no INT NOT NULL, 
		salary INT NOT NULL, 
	foreign key (emp_no) references employees (emp_no)
);

create table dept_manager( 
		dept_no VARCHAR (8) NOT NULL, 
		emp_no INT NOT NULL, 
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no)
);


