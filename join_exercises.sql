use employees;

-- setting the table row names as the correct name
SELECT dept_name as 'Department Name', concat(first_name, ' ', last_name) as 'Department Manager'
-- giving departments a nickname of d
FROM departments as d
-- giving department manager a nickname of dm
JOIN dept_manager as dm
-- comparing department MANAGER department number to the department number
ON dm.dept_no = d.dept_no
-- giving employees a nickname of e
JOIN employees as e
-- comparing the employee number to the department manager employee number
ON e.emp_no = dm.emp_no
-- making sure that they are currently active
where dm.to_date = '9999-01-01';

-------------------------------------------------------------------------------------------------

-- setting the table row names as the correct name
SELECT dept_name as 'Department Name', concat(first_name, ' ', last_name) as Manager_Name
-- giving departments a nickname of d
FROM departments as d
-- giving department manager a nickname of dm
JOIN dept_manager as dm
-- comparing department MANAGER department number to the department number
ON dm.dept_no = d.dept_no
-- giving employees a nickname of e
JOIN employees as e
-- comparing the employee number to the department manager employee number
ON e.emp_no = dm.emp_no
-- making sure that they are currently active and that they are female
where dm.to_date = '9999-01-01' and e.gender = 'F'
--grouping by the department name and the manager full name
group by dept_name, Manager_Name;

--

---------------------------------------------------------------------------------------------------

-- giving the table row the corresponding name
SELECT title as 'Title', count(*)
-- grabbing the titles and setting it to T
from titles as t
-- joining department employee as the letter E
join dept_emp as e
-- comparing the employee number to the TITLE employee number
on e.emp_no = t.emp_no
-- giving it conditions to make sure it is active, AND in customer service AND checking to see if the title is active
where e.to_date = '9999-01-01' and e.dept_no = 'd009' and t.to_date = '9999-01-01'
-- grouping by title, meaning that it's only grabbing a singular instance("GROUP BY" is the same as putting in "Distinct" after the select statement)
group by title;

---------------------------------------------------------------------------------------------------

SELECT dept_name as Department_Name, concat(first_name, ' ', last_name) as Manager_Name, salary as Salary

FROM departments as d

JOIN dept_manager as dm

ON dm.dept_no = d.dept_no

JOIN employees as e

ON e.emp_no = dm.emp_no

JOIN salaries as s

ON s.emp_no = dm.emp_no

WHERE s.to_date = '9999-01-01' AND dm.to_date = '9999-01-01'

GROUP BY Department_Name, Manager_Name, Salary;

---------------------------------------------------------------------------------------------------

SELECT concat(first_name, ' ', last_name) as Employee_Name, dept_name as Department_Name, concat(first_name, ' ', last_name) as Manager_Name

FROM departments as d

JOIN dept_manager as dm

ON dm.dept_no = d.dept_no

JOIN employees as e

ON e.emp_no = dm.emp_no

WHERE dm.to_date = '9999-01-01'

GROUP BY Employee_Name, Department_Name, Manager_Name;