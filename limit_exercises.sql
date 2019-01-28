use employees;

--this is listing the first 10 distinct last name sorted in descending order
select distinct last_name from employees.employees order by last_name desc limit 10;

--showing all employees born on christmas and hired in the 90s showing only 5 starting on the 10th page
select * from employees.employees where hire_date like '199%' and birth_date like '%-12-25' order by birth_date asc, hire_date desc limit 5 offset 45;


