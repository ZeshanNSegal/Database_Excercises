SELECT * FROM departments;
SELECT DISTINCT first_name
FROM employees
WHERE first_name LIKE '%sus%';
SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no BETWEEN 10026 AND 10082;
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name IN ('Herber', 'Dredge', 'Lipner', 'Baek');

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name = 'Baek';

SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no < 10026;

SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no <= 10026;

SELECT emp_no, title
FROM titles
WHERE to_date IS UNKNOWN;

SELECT emp_no, first_name, last_name
FROM employees
WHERE gender = 'M'
AND (
	first_name = 'Irena'
	 OR first_name = 'Vidya'
	OR first_name = 'Maya'
);

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%E' 
OR last_name LIKE 'E%';

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%E' 
AND last_name LIKE 'E%';

SELECT * FROM employees WHERE birth_date LIKE '%-12-25' AND  
(
	hire_date BETWEEN '1990-01-01' AND '1999-12-31'
);

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';