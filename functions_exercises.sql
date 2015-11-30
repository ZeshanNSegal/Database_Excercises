SELECT COUNT(*) AS number_of_employees, gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;

SELECT CONCAT(first_name, ' ', last_name) full_name, gender
FROM employees
WHERE
(
 	last_name LIKE '%E' 
	OR last_name LIKE 'E%'
	OR first_name LIKE '%E' 
	OR first_name LIKE 'E%'
);
	
SELECT hire_date, first_name, last_name, datediff(CURDATE(), hire_date)
FROM employees   
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' 
AND
(
	birth_date LIKE '%-12-25'
)
ORDER BY hire_date ASC, birth_date;

SELECT COUNT(*) AS people_with_the_same_name, CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY full_name
ORDER BY people_with_the_same_name DESC;

SELECT CONCAT(emp_no, '- ', last_name, ', ', first_name) AS full_name, birth_date AS DOB
FROM employees
LIMIT 10;

DESCRIBE departments;
DESCRIBE dept_manager;
DESCRIBE employees;
DESCRIBE salaries;
DESCRIBE titles;
