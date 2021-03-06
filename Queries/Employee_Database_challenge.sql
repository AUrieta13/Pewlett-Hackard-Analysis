
-- DELIVERABLE 1: THE NUMBER OF RETIRING EMPLOYEES BY TITLE

SELECT e.emp_no, 
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees as e
	INNER JOIN titles as t
	ON (e.emp_no = t.emp_no)
	WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
	ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no, 
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, title DESC;

-- Retrieve the number of employees by their most recent job title who are about to retire.
SELECT COUNT(ut.emp_no),
	ut.title
INTO retiring_titles
FROM unique_titles AS ut
	GROUP BY title
	ORDER BY COUNT(title) DESC;
	
select count(emp_no) from unique_titles;
-- DELIVERABLE 2: THE EMPLOYEES ELIGIBLE FOR THE MENTORSHIP PROGRAM

SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility 
FROM employees as e
	LEFT OUTER JOIN dept_emp as de
	ON (e.emp_no = de.emp_no)
	LEFT OUTER JOIN titles as t
	ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;
	
select count(emp_no) from mentorship_eligibility; 