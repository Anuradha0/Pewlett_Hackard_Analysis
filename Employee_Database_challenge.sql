SELECT e.emp_no, 
       e.first_name, 
	   e.last_name,
       ti.title, 
	   ti.from_date, 
	   ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti 
ON e.emp_no = ti.emp_no
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp_no

select * from retirement_titles
limit 10

select * from departments
limit 10

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

select * from unique_titles
limit 10

select count(*)
from unique_titles

SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;

select * from retiring_titles
limit 10

SELECT DISTINCT ON (emp_no)
e.emp_no, 
e.first_name, 
e.last_name, 
e.birth_date,
de.from_date,
de.to_date,
ti.title
INTO mentorship_eligibilty
from employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no

select * from mentorship_eligibilty
limit 10

select count(*)
from mentorship_eligibilty

SELECT COUNT(title), title
INTO mentorship_eligibilty_titles
FROM mentorship_eligibilty
GROUP BY title
ORDER BY COUNT(title) DESC;

select *
from mentorship_eligibilty_titles

SELECT DISTINCT ON (emp_no)
       ut.emp_no, 
       ut.first_name, 
	   ut.last_name,
       ut.title, 
	   s.salary
INTO retirement_salary
FROM unique_titles as ut
LEFT JOIN salaries as s 
ON ut.emp_no = s.emp_no
ORDER BY emp_no;

select * from retirement_salary
limit 10