USE	Parks_and_Recreation;

-- Joins

-- joins allow you to combine 2 tables together (or more) if they have a common column.
-- doesn't mean they need the same column name, but the data in it are the same and can be used to join the tables together
-- there are several joins we will look at today, inner joins, outer joins, and multiple joins together

SELECT * FROM employee_demgraphics;

SELECT * FROM employee_salary;

-- let's start with an inner join -- inner joins return rows that are the same in both columns

-- since we have the same columns we need to specify which table they're coming from
SELECT * FROM employee_demgraphics INNER JOIN employee_salary ON employee_demgraphics.employee_id=employee_salary.employee_id;\

SELECT dem.employee_id,dem.first_name,dem.last_name,sal.occupation,sal.salary 
FROM employee_demgraphics AS dem 
INNER JOIN employee_salary AS sal 
ON dem.employee_id=sal.employee_id;


-- let's start with an inner join -- inner joins return rows that are the same in both columns

-- since we have the same columns we need to specify which table they're coming from
SELECT * 
FROM employee_salary AS sal
LEFT OUTER JOIN employee_demgraphics AS dem
ON sal.employee_id=dem.employee_id;


--Right join, It gives all the values which have in the right table and in the left table if any value is missing in row it will return as NULL
SELECT * 
FROM employee_demgraphics AS dem
RIGHT OUTER JOIN employee_salary AS sal
ON dem.employee_id=sal.employee_id;


--Creating new table for multiple joins
CREATE TABLE parks_departments(
dept_id INT NOT NULL,
dept_name VARCHAR(50));

--Inserting values in new table
INSERT INTO parks_departments
VALUES(1,'Parks and Recreation'),
(2,'Animal Control'),
(3,'Public Works'),
(4,'Healthcare'),
(5,'Library'),
(6,'Finance');



-- Joining multiple tables

-- now we have on other table we can join - let's take a look at it
SELECT dem.employee_id,dem.first_name,dem.last_name,sal.occupation,sal.salary,pd.dept_id,pd.dept_name
FROM employee_demgraphics AS dem
INNER JOIN employee_salary AS sal
ON dem.employee_id=sal.employee_id
INNER JOIN parks_departments AS pd
ON sal.dept_id=pd.dept_id;


SELECT *
FROM employee_demgraphics dem
INNER JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
LEFT JOIN parks_departments dept
	ON dept.dept_id = sal.dept_id;