USE employees;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
)
LIMIT 69;

SELECT title
FROM titles
WHERE emp_no IN(
      SELECT emp_no
      FROM employees
      WHERE first_name = 'Aamod'
);

SELECT first_name, last_name
FROM employees
WHERE emp_no IN(
      SELECT emp_no
      FROM dept_manager
      WHERE gender = 'F' and to_date = '9999-01-01'
);

SELECT dept_name
FROM departments
WHERE dept_no IN(
      SELECT dept_no
      FROM dept_manager
      WHERE emp_no IN (
            SELECT emp_no
            FROM employees
            WHERE gender = 'F' and to_date = '9999-01-01'
      )
)
ORDER BY dept_name;

SELECT first_name, last_name
FROM employees
WHERE emp_no IN(
      SELECT emp_no
      FROM salaries
      WHERE salary = (
            SELECT max(salary)
            FROM salaries
          )
      );


