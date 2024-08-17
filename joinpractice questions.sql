SELECT CONCAT(dem.first_name,' ',dem.last_name) AS Full_Name,sal.occupation,pd.dept_name
FROM employee_demgraphics AS dem
INNER JOIN employee_salary AS sal
ON dem.employee_id=sal.employee_id
INNER JOIN parks_departments AS pd
ON sal.dept_id=pd.dept_id;

SELECT sal.first_name,sal.last_name,sal.salary
FROM employee_salary AS sal
INNER JOIN parks_departments AS pd
ON sal.dept_id=pd.dept_id
WHERE dept_name = 'Healthcare';

SELECT CONCAT(dem.first_name,' ',dem.last_name) AS Full_Name,dept_name
FROM employee_demgraphics AS dem
INNER JOIN employee_salary AS sal
ON dem.employee_id=sal.employee_id
INNER JOIN parks_departments AS pd
ON pd.dept_id=sal.dept_id
WHERE age<=30;

SELECT dem.gender, COUNT(dem.gender) AS Total_Employee
FROM employee_demgraphics AS dem
INNER JOIN employee_salary AS sal
ON dem.employee_id=sal.employee_id
INNER JOIN parks_departments AS pd
ON sal.dept_id=pd.dept_id
WHERE dept_name LIKE '%Recreation%'
GROUP BY dem.gender;


SELECT CONCAT(dem.first_name,' ',dem.last_name) AS Full_Name, dem.birth_date, sal.salary
FROM employee_demgraphics AS dem
INNER JOIN employee_salary AS sal
ON dem.employee_id=sal.employee_id
WHERE sal.salary>50000;

SELECT pd.dept_name, COUNT(dem.first_name) AS Total_Employee
FROM employee_demgraphics AS dem
INNER JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments AS pd
ON sal.dept_id = pd.dept_id
GROUP BY pd.dept_name;

SELECT CONCAT(dem.first_name,' ',dem.last_name) AS Full_Name, pd.dept_name
FROM employee_demgraphics AS dem
INNER JOIN employee_salary AS sal
ON dem.employee_id=sal.employee_id
INNER JOIN parks_departments AS pd
ON sal.dept_id=pd.dept_id
WHERE dem.first_name LIKE 'A%';

SELECT CONCAT(sal.first_name,' ',sal.last_name) AS Full_Name,sal.occupation, pd.dept_name
FROM employee_salary AS sal
INNER JOIN parks_departments AS pd
ON sal.dept_id=pd.dept_id;

SELECT CONCAT(sal.first_name,' ',sal.last_name) AS Full_Name, sal.salary
FROM employee_salary AS sal
INNER JOIN parks_departments AS pd
ON sal.dept_id=pd.dept_id
WHERE pd.dept_name LIKE '%Park%';


SELECT CONCAT(sal.first_name,' ',sal.last_name) AS Full_Name, pd.dept_id,pd.dept_name
FROM employee_salary AS sal
LEFT JOIN parks_departments AS pd
ON sal.dept_id=pd.dept_id;

SELECT *
FROM employee_salary AS sal
LEFT JOIN employee_demgraphics AS dem
ON dem.employee_id=sal.employee_id
LEFT JOIN parks_departments AS pd
ON sal.dept_id=pd.dept_id;

SELECT * 
FROM employee_salary AS sal
LEFT JOIN parks_departments AS pd
ON sal.dept_id=pd.dept_id
WHERE sal.salary<40000;

SELECT *
FROM employee_demgraphics AS dem
LEFT JOIN employee_salary AS sal
ON sal.employee_id=dem.employee_id
LEFT JOIN parks_departments AS pd
ON sal.dept_id=pd.dept_id
WHERE birth_date>'1990-01-01';


SELECT * 
FROM parks_departments AS pd
RIGHT JOIN employee_salary AS sal
ON pd.dept_id=sal.dept_id;

