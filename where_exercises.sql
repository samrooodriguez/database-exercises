USE employees;
-- selecting all employees with these names - 709 rows - and who are also male
select first_name, last_name, gender from employees.employees where first_name = 'Irena' or first_name = 'Vidya' or first_name =
'Maya' and gender = 'M';

-- selecting all employees with last names that start with the letter E
select last_name from employees.employees where last_name like 'e%';

-- selecting all employees that were hired in the 1990s
select * from employees.employees where hire_date like '199%';

--selecting all employees that were born on christmas day
select * from employees.employees where birth_date like '%-12-25';

--selecting all employees that have a "Q" in their last name
select last_name from employees.employees where last_name like '%q%';

--selecting all employees that have a last name that starts AND ends with E
select * from employees.employees where last_name like 'e%e';

--selecting all employees that were hired in the 90s AND born on christmas
select * from employees.employees where hire_date like '199%' and birth_date like '%-12-25';
--selecting all employees that have a "q" in their last name but not a "qu"
select last_name from employees.employees where last_name like '%q%' and not last_name like '%qu%';
