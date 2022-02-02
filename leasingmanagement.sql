-- no 1 Select name and age from employee table
SELECT EMP_NAME, AGE FROM employee;

-- no 2 select name and gender of tenants who have a pincode of 1
SELECT NAME, GENDER FROM tenants WHERE PINCODE=1;

-- no 3 select name and gender of tenants who have a pincode of 1
SELECT NAME, GENDER FROM tenants WHERE PINCODE=1 OR PINCODE=2;

-- no 4 Select name and join date of the employees who hava both a
-- a salary of greater than10 and aged above 20
SELECT EMP_NAME, JOIN_DATE FROM employee WHERE salary >10 AND AGE > 20;

-- no 5 select once the email from employee_email table
SELECT DISTINCT EMAIL FROM employee_email;

-- no 6 select once the COMP_ID , DETALS, PINCODE, TENANT_ID  FROM complaints
SELECT DISTINCT COMP_ID , DETALS, PINCODE, TENANT_ID  FROM complaints;

-- no 7 select once the APART_ID, EMINITIES  FROM apartment
SELECT DISTINCT APART_ID, EMINITIES  FROM apartment;

-- no 8 select once the IND_ID , EMINITIES, OFF_ID   FROM individualhouse
SELECT DISTINCT IND_ID , EMINITIES, OFF_ID   FROM individualhouse;

-- no 10 Give the output, name for emplyee who have a salary beween 200 
-- and 20000
SELECT EMP_NAME FROM employee 
WHERE salary BETWEEN 200 AND 20000;

-- no 11 Delete the record for tenant with ID 1 from individualhouse
DELETE FROM individualhouse WHERE TENANT_ID=1;

-- no 12 replace the value of email in the employeeemail table 
-- where EMP_ID is 1
UPDATE employee_email
SET EMAIL = 'mygmail@info.done'
WHERE EMP_ID = 1;

-- no 13 Give the output, name and join_date for employee who have a 
-- salary equal to 1000 or 2000
SELECT EMP_NAME, JOIN_DATE FROM employee 
WHERE salary IN (1000, 2000);

-- no 14 find the lowest salary from employee table
SELECT MIN(salary) AS SmallestSalary
FROM employee;

-- no 15 Get the name,gender and house type for customer who their
-- usernames start with m
SELECT NAME, GENDER, HOUSE_TYPE FROM tenants
WHERE USERNAME LIKE 'M%'
	
-- no 16 Select the name from tenants and PINcode from loaction table
-- where pincode is 1
SELECT tenants.NAME, location.PINCODE
FROM tenants
INNER JOIN location
ON tenants.PINCODE = location.PINCODE
WHERE tenants.PINCODE = 1;

-- no 17 Get tenant emails which have an o in the second position of 
-- the email name.
SELECT EMAIL FROM tenant_email 
WHERE SUBSTR(EMAIL, 2, 1) = 'o'

-- no 18 right join to get the name and age of the manager from the employees table
SELECT employee.EMP_NAME, employee.AGE
FROM employee
RIGHT JOIN manager
ON employee.EMP_ID = manager.EMP_ID;

-- no 19 Display the Pincode and the number of occurrences 
-- of pincodes in the employee table
SELECT PINCODE, count(*) as pincodes
FROM employee
GROUP BY PINCODE
ORDER BY pincodes asc, PINCODE


-- no 20 Select distinctly the EMP_ID, Empname and age from the employee
-- table and union it with the manager table at manager id column
SELECT EMINITIES FROM villa 
UNION
SELECT EMINITIES FROM individualhouse;