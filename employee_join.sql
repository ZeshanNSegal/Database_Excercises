USE employees; 

SELECT dm.emp_no, d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM dept_manager AS dm
LEFT JOIN departments AS d ON d.dept_no = dm.dept_no
LEFT JOIN employees AS e on dm.emp_no = e.emp_no
WHERE dm.to_date > now();

SELECT dm.emp_no, d.dept_name, e.gender, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM dept_manager AS dm
LEFT JOIN departments AS d ON d.dept_no = dm.dept_no
LEFT JOIN employees AS e ON dm.emp_no = e.emp_no
WHERE dm.to_date > now() AND e.gender = 'F';

SELECT t.title, COUNT(t.title) AS count
FROM departments AS d
LEFT JOIN dept_emp AS de ON de.dept_no = d.dept_no
LEFT JOIN titles AS t ON t.emp_no = de.emp_no
WHERE de.to_date > now() AND d.dept_no = 'd009' AND t.to_date> now()
GROUP BY t.title;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Name', s.salary AS 'Salary'
FROM departments AS d
LEFT JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
LEFT JOIN salaries AS s ON s.emp_no = dm.emp_no
LEFT JOIN employees AS e ON e.emp_no = s.emp_no
WHERE dm.to_date > now() AND s.to_date > now() 
GROUP BY d.dept_name;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Current Employees', d.dept_name AS 'Department Name', CONCAT(mgrs.first_name, ' ', mgrs.last_name) AS 'Current Managers'
FROM employees AS e
LEFT JOIN dept_emp AS de ON e.emp_no = de.emp_no
LEFT JOIN departments AS d ON d.dept_no = de.dept_no
LEFT JOIN dept_manager AS dm ON dm.dept_no = d.dept_no
LEFT JOIN employees AS mgrs ON mgrs.emp_no = dm.emp_no
WHERE de.to_date > now() AND dm.to_date > now()
;
