-- Agregation functions queries

-- Adding SalePrice to get the total amount in sales
SELECT * FROM PETSALE;
SELECT SUM(SALEPRICE) AS SUM_PETPRICE FROM PETSALE;

-- Adding SalePrice to get the total amount in sales of dogs
SELECT SUM(SALEPRICE) AS SUM_DOGPRICE 
FROM PETSALE
WHERE ANIMAL LIKE 'Dog';

-- Adding SalePrice in an specific day
SELECT SUM(SALEPRICE) AS SUM_DOGPRICE 
FROM PETSALE
WHERE MONTH(SALEDATE) = '06';
	
-- Finding maximun quantity sold by day
select MAX(QUANTITY) from PETSALE;

-- Average of a sale
select AVG(SALEPRICE) from PETSALE;

-- Average amount for sales of dogs
select AVG( SALEPRICE / QUANTITY ) from PETSALE where ANIMAL = 'Dog';

-- Round SalePrice attribute
select SALEPRICE, ROUND(SALEPRICE) from PETSALE;

-- String Lenght for Attribute Animal
select ANIMAL, LENGTH(ANIMAL) AS AnimalStringLenght from PETSALE;

-- Uppercase Animal attribute
select ANIMAL, UCASE(ANIMAL) from PETSALE;

-- select unique values of the Animal Attribute and convert them to uppercase
select DISTINCT(UCASE(ANIMAL)) from PETSALE;

-- Seleting cat sales. It does not distinguish uppercase or lowercase
select * from PETSALE where LCASE(ANIMAL) = 'cat';

-- Show the day of the month when cats were sold
select DAY(SALEDATE) from PETSALE where ANIMAL = 'Cat';

-- Count number of sales on May
select COUNT(*) from PETSALE where MONTH(SALEDATE)='05';

-- Select sales and add 3 days
select (SALEDATE + 3 DAYS) from PETSALE;

-- select interval of time since the sale up to now (in hours)
select (CURRENT DATE - SALEDATE) from PETSALE;	
	
	
