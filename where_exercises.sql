USE employees;
-- selecting all employees with these names - 709 rows
select first_name, last_name from employees.employees where first_name in ('Irena', 'Vidya', 'Maya');

-- selcting all employees with last names that start with the letter E
select last_name from employees.employees where last_name like 'e%';

-- selecting all employees that were hired in the 1990s
select * from employees.employees where hire_date like '199%';

--selecting all employees that were born on christmas day
select * from employees.employees where birth_date like '%-12-25';

--selecting all employees that have a "Q" in their last name
select last_name from employees.employees where last_name like '%q%';
