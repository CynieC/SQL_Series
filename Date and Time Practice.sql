
/*Select the databse*/
USE adventureworks2019


/*Get the overview of the table*/
SELECT * FROM production.TransactionHistory

/*General Date and Time functions*/
SELECT DATENAME(YEAR, GETDATE())        AS 'Year'    
SELECT DATENAME(QUARTER, GETDATE())     AS 'Quarter'  
SELECT DATENAME(MONTH, GETDATE())       AS 'Month Name'     
SELECT DATENAME(DAYOFYEAR, GETDATE())   AS 'DayOfYear' 
SELECT DATENAME(DAY, GETDATE())         AS 'Day'       
SELECT DATENAME(WEEK, GETDATE())        AS 'Week'      
SELECT DATENAME(WEEKDAY, GETDATE())     AS 'Day of the Week'  
SELECT DATENAME(HOUR, GETDATE())        AS 'Hour'    
SELECT DATENAME(MINUTE, GETDATE())      AS 'Minute'
SELECT DATENAME(SECOND, GETDATE())      AS 'Second'

/*Extract the year*/
SELECT ReferenceOrderID,
DATENAME(YEAR,TransactionDate)  AS 'Year'
FROM production.TransactionHistory
ORDER BY Year DESC

/*Extract the month*/
SELECT ReferenceOrderID,
DATENAME(MONTH,TransactionDate) AS 'Month'
FROM production.TransactionHistory
WHERE ReferenceOrderID = 41594

