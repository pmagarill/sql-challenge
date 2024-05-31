CREATE TABLE titles (
  title_id varchar NOT NULL,
  title varchar,
  PRIMARY KEY (title_id)
);

CREATE TABLE employees (
  emp_no varchar NOT NULL,
  emp_title_id varchar NOT NULL,
  birth_date date,
  first_name varchar,
  last_name varchar,
  sex varchar,
  hire_date date,
  PRIMARY KEY (emp_no),
  FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE departments (
  dept_no varchar NOT NULL,
  dept_name varchar,
  PRIMARY KEY (dept_no)
);

CREATE TABLE dept_emp (
  emp_no varchar NOT NULL,
  dept_no varchar,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
  dept_no varchar NOT NULL,
  emp_no varchar,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE salaries (
  emp_no varchar NOT NULL,
  salary money,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);