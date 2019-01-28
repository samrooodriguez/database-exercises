use employees;

select distinct title from employees.titles;


select first_name, last_name from employees.employees where last_name like 'e%e' group by first_name,last_name;

select last_name, count(last_name) from employees.employees where last_name like '%q%' and not last_name like '%qu%' group by last_name order by last_name;

select count(*),gender
from employees.employees
where first_name = 'Irena'
 or first_name = 'Vidya'
 or first_name = 'Maya'
group by gender;