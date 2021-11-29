
--1) Deliverables 1:
-- From Q1-7
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

-- From Q8-14
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

-- From Q15-21
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;

select * from retiring_titles
limit 10

--1) Deliverables 2:
--From Q1-11
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

SELECT COUNT(title), title
INTO mentorship_eligibilty_titles
FROM mentorship_eligibilty
GROUP BY title
ORDER BY COUNT(title) DESC;
