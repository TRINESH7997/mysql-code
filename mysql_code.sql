
1-- Write a query to calculate the average age of employees in each department.
SELECT d.name AS department, AVG(e.age) AS average_age FROM employees e
JOIN departments d ON e.department_id = d.id
GROUP BY d.name;

2-- Write a query to find the department with the highest number of employees whose age is above 40.

SELECT d.name AS department, COUNT(e.id) AS employee_count
FROM employees e JOIN departments d ON e.department_id = d.id
WHERE e.age > 40
GROUP BY d.name
ORDER BY employee_count DESC
LIMIT 1;

3-- Write a query to retrieve the count of employees who have in joined in last 100 days.
SELECT COUNT(*) AS employee_count
FROM employees
WHERE joining_date >= joining_date - INTERVAL 100 DAY;

4-- Write a query to update the joining date of all employees in the HR department to the yesterday.
UPDATE employees
SET joining_date = joining_date - INTERVAL 1 DAY
WHERE department_id = ( SELECT id FROM departments WHERE name = 'HR');

5-- Write a query to retrieve the count of employees who have in joined in last 100 days.

SELECT COUNT(*) AS employee_count
FROM employees
WHERE joining_date >= joining_date - INTERVAL 100 DAY;
