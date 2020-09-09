use employees;

# 2.
select distinct title from titles;

# 3.
select last_name from employees
where last_name like 'E%e'
group by last_name;

# 3. 4.
select first_name, last_name from employees
where last_name like 'E%e'
group by last_name, first_name;

# 5.
select last_name, count(*) from employees
where last_name like '%q%' and last_name not like '%qu%'
group by last_name order by count(*) desc;

# 6. 7.
select COUNT(*), gender from employees
where first_name IN ('Irena', 'Vidya', 'Maya')
group by gender;