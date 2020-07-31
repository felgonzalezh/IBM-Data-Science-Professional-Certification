-- Query 1
-- Retrieve all employees whose address is in Elgin,IL

SELECT F_NAME, L_NAME 
FROM EMPLOYEES
WHERE ADDRESS LIKE '%Elgin%';

-- Query 2
-- Retrieve all employees who were born during the 1970's

SELECT F_NAME, L_NAME 
FROM EMPLOYEES
WHERE B_DATE LIKE '%197%';

-- Query 3
-- Retrieve all employees in department 5 whose salary is between 60000 and 70000

SELECT F_NAME, L_NAME
FROM EMPLOYEES
WHERE DEP_ID='5' 
AND (SALARY BETWEEN 60000 AND 70000);

-- Query 4A
-- Retrieve a list of employees ordered by department ID.

SELECT F_NAME, L_NAME, DEP_ID
FROM EMPLOYEES
ORDER BY DEP_ID;

-- Query 4B
-- Retrieve a list of employees ordered in descending order by department ID and within each department ordered alphabetically in descending order by last name

SELECT F_NAME, L_NAME, DEP_ID
FROM EMPLOYEES
ORDER BY DEP_ID DESC, L_NAME DESC;

-- Query 5A
-- For each department ID retrieve the number of employees in the department.

SELECT DEP_ID, COUNT(DEP_ID) AS NUM_EMPL
FROM EMPLOYEES
GROUP BY DEP_ID;

-- Query 5B, 5C, 5D, 5E
-- For each department retrieve the number of employees in the department, and the average employees salary in the department. limit the result to departments with fewer than 4 employees

SELECT DEP_ID, COUNT(DEP_ID) AS NUM_EMPL, AVG(SALARY) AS AVG_SALARY
FROM EMPLOYEES
GROUP BY DEP_ID
HAVING COUNT(*) < 4
ORDER BY AVG_SALARY;

-- BONUS Query 6
-- Similar to 4B but instead of department ID use department name. Retrieve a list of employees ordered by department name, and within each department ordered alphabetically in descending order by last name

SELECT Emp.DEP_ID, Dep.DEP_NAME, Emp.F_NAME, Emp.L_NAME
FROM EMPLOYEES Emp
JOIN DEPARTMENTS Dep
ON Emp.DEP_ID = Dep.DEPT_ID_DEP
ORDER BY Dep.DEP_NAME, L_NAME DESC;

-- Alternative solution 
SELECT Emp.F_NAME, Emp.L_NAME, Dep.DEP_ID, DEP_NAME
FROM EMPLOYEES Emp
JOIN DEPARTMENTS Dep
ON Emp.DEP_ID = Dep.DEPT_ID_DEP;



