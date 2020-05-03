--guery to find list of employee details
SELECT ee.emp_no,
       ee.last_name,
	   ee.first_name,
	   ee.gender,
	   s.salary

FROM employees as ee
JOIN salaries as s
on ee.emp_no = s.emp_no
;
--list of employees hired after 1986

SELECT ee.emp_no,
       ee.first_name,
	   ee.last_name,
	   ee.hire_date
FROM employees as ee
WHERE ee.hire_date > '1986-12-31'
;

--list of managers for each department
SELECT dm.emp_no,
       ee.last_name,
	   ee.first_name,
	   dp.depart_name
	   
FROM dept_manager as dm
JOIN employees as ee
	on dm.emp_no = ee.emp_no
JOIN departments as dp
    on dm.dept_no = dp.dept_no
;
--list of employees for each department with ee name, deparment & number
SELECT de.emp_no,
       ee.last_name,
	   ee.first_name,
	   dp.depart_name
	   
FROM dept_emp as de
JOIN employees as ee
	on de.emp_no = ee.emp_no
JOIN departments as dp
    on de.dept_no = dp.dept_no   
;
--list all employees with first name "Hercules" and last name begins with B
SELECT last_name,
	   first_name
	     
FROM employees 

WHERE first_name = 'Hercules'
  AND last_name like 'B%'    
;


--list all employees in sales department showing ee name, deparment name
SELECT de.emp_no,
       ee.last_name,
	   ee.first_name,
	   dp.depart_name
	   
FROM dept_emp as de
JOIN employees as ee
	on de.emp_no = ee.emp_no
JOIN departments as dp
    on de.dept_no = dp.dept_no  
	
WHERE de.dept_no = 'd007'	
;

--list of employees in sales & development departments  with ee name, deparment name
SELECT de.emp_no,
       ee.last_name,
	   ee.first_name,
	   dp.depart_name
	   
FROM dept_emp as de
JOIN employees as ee
	on de.emp_no = ee.emp_no
JOIN departments as dp
    on de.dept_no = dp.dept_no  
	
WHERE de.dept_no in ('d007','d005')	
;

--Frequency count of last name sorted in descending count order
SELECT last_name, count(*) as "Frequency"
	  
FROM employees
group by last_name
ORDER BY "Frequency" DESC
;