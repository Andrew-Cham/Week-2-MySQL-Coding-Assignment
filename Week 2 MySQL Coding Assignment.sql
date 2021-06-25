
use employees;
show tables;

SELECT employees.emp_no,employees.birth_date, employees.first_name, employees.last_name, titles.title FROM employees
INNER JOIN titles ON titles.emp_no = employees.emp_no WHERE birth_date > '1965-01-01';

SELECT titles.title AS "Titles", AVG(salary) AS "Average Salary" FROM salaries
INNER JOIN titles ON salaries.emp_no = titles.emp_no
GROUP BY titles.title;

SELECT d.dept_name AS "Department", AVG(s.salary) AS "Money Spent" FROM departments d
INNER JOIN dept_emp de ON de.dept_no = d.dept_no
INNER JOIN salaries s ON s.emp_no = de.emp_no
WHERE d.dept_name = "Marketing" AND year(s.from_date) > '1990' AND year(s.to_date) < '1992'
GROUP BY d.dept_name;