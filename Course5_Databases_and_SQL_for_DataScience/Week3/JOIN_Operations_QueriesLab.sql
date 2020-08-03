-- Queries based on the data bases created in Week2/Grouping_Sorting

-- Select the names and job start dates of all employees who work for the department number 5

SELECT E.F_NAME, E.L_NAME, JH. START_DATE 
FROM EMPLOYEES E 
JOIN JOB_HISTORY JH
ON E.EMP_ID = JH.EMPL_ID
WHERE DEP_ID = 5;

--  1B: Select the names, job start dates, and job titles of all employees who work for the department number 5

SELECT E.F_NAME, E.L_NAME, JH. START_DATE, J.JOB_TITLE
FROM EMPLOYEES E 
JOIN JOB_HISTORY JH
ON E.EMP_ID = JH.EMPL_ID
JOIN JOBS J
ON JH.JOBS_ID = J.JOB_IDENT
WHERE DEP_ID = 5;

-- 2A: Perform a Left Outer Join on the EMPLOYEES and DEPARTMENT tables and select 
-- employee id, last name, department id and department name for all employees

SELECT E.EMP_ID , E.L_NAME, E.DEP_ID, D.DEP_NAME 
FROM EMPLOYEES E
LEFT OUTER JOIN DEPARTMENTS D
ON E.DEP_ID = D.DEPT_ID_DEP;

-- 2B: Re-write the query for 2A to limit the result set to include only the rows for 
-- employees born before 1980

SELECT E.EMP_ID, E.L_NAME, E.DEP_ID, D.DEP_NAME 
FROM EMPLOYEES E
LEFT OUTER JOIN DEPARTMENTS D
ON E.DEP_ID = D.DEPT_ID_DEP
WHERE YEAR(E.B_DATE) < 1980;

-- 2C: Re-write the query for 2A to have the result set include all the
-- employees but department names for only the employees who were born
-- before 1980.

SELECT E.EMP_ID, E.L_NAME, E.DEP_ID, D.DEP_NAME 
FROM EMPLOYEES E
LEFT OUTER JOIN DEPARTMENTS D
ON E.DEP_ID = D.DEPT_ID_DEP
AND YEAR(E.B_DATE) < 1980;


-- 3A: Perform a Full Join on the EMPLOYEES and DEPARTMENT tables
-- and select the First name, Last name and Department name of all employees

SELECT E.EMP_ID, E.L_NAME, D.DEP_NAME 
FROM EMPLOYEES E
FULL OUTER  JOIN DEPARTMENTS D
ON E.DEP_ID = D.DEPT_ID_DEP;

-- 3B: Re-write Query 3A to have the result set include all employee
-- names but department id and department names only for male employees

SELECT E.EMP_ID, E.L_NAME, E.DEP_ID, D.DEP_NAME  
FROM EMPLOYEES E
FULL OUTER JOIN DEPARTMENTS D
ON E.DEP_ID = D.DEPT_ID_DEP 
AND E.SEX = 'M';

