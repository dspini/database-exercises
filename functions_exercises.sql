USE employees;

-- All employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows.
# Modify your first query to order by first name.
# Update the query to order by first name and then last name.
# Change the order by clause so that you order by last name before first name.
# Now reverse the sort order for both queries.
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
# ORDER BY first_name, last_name;
# ORDER BY last_name DESC, first_name DESC;
ORDER BY last_name DESC, first_name DESC;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name DESC , first_name DESC ;

-- All employees whose last name starts with 'E' — 7,330 rows.
# Update your queries for employees with 'E' in their last name to sort the results by their employee number.
SELECT *
FROM employees
WHERE last_name LIKE 'E%'
# ORDER BY emp_no;
ORDER BY emp_no DESC;

-- All employees hired in the 90s — 135,214 rows.
SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

-- All employees born on Christmas — 842 rows.
SELECT *
FROM employees
WHERE birth_date LIKE '%12-25';

-- All employees with a 'q' in their last name — 1,873 rows.
SELECT *
FROM employees
WHERE last_name LIKE '%q%';

-- Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
SELECT *
FROM employees
WHERE first_name = 'Irena'
   OR   first_name = 'Vidya'
   OR   first_name = 'Maya';

-- Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
  AND  gender = 'M';

-- All employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT *
FROM employees
WHERE last_name LIKE 'E%'
   OR   last_name LIKE '%e';

# Update your queries for employees whose names start and end with 'E'.
# Use concat() to combine their first and last name together as a single column in your results.
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%'
order by emp_no DESC ;

-- Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT *
FROM employees
WHERE last_name LIKE 'E%e';

-- Find all employees hired in the 90s and born on Christmas — 362 rows.
# Change the query for employees hired in the 90s and born on Christmas such that the first
# result is the oldest employee who was hired last.
SELECT first_name, last_name, hire_date, birth_date
FROM employees
WHERE hire_date LIKE '199%'
  AND  birth_date LIKE '%12-25'
ORDER BY birth_date, hire_date
    DESC;

# For your query of employees born on Christmas and hired in the 90s, use datediff()
# to find how many days they have been working at the company (Hint: You will also need to use now() or curdate())
SELECT first_name, last_name, hire_date, birth_date, datediff(curdate(), hire_date)
FROM employees
WHERE hire_date LIKE '199%'
 AND  birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date
DESC;

-- Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND  last_name NOT LIKE '%qu%';