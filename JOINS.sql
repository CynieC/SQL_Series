USE AdventureWorks2019

SELECT * FROM HumanResources.Employee

SELECT * FROM HumanResources.EmployeePayHistory

SELECT DISTINCT (JobTitle),Rate
FROM HumanResources.Employee
INNER JOIN HumanResources.EmployeePayHistory
ON HumanResources.Employee.BusinessEntityID = HumanResources.EmployeePayHistory.BusinessEntityID
ORDER BY Rate DESC


SELECT VacationHours,SickLeaveHours,Rate
FROM HumanResources.Employee
LEFT JOIN HumanResources.EmployeePayHistory ON HumanResources.Employee.BusinessEntityID=HumanResources.EmployeePayHistory.BusinessEntityID
ORDER BY Rate DESC

SELECT VacationHours,SickLeaveHours,Rate
FROM HumanResources.Employee
RIGHT JOIN HumanResources.EmployeePayHistory ON HumanResources.Employee.BusinessEntityID=HumanResources.EmployeePayHistory.BusinessEntityID
ORDER BY Rate

SELECT JobTitle, HireDate AS startdate,Rate
FROM HumanResources.Employee
FULL OUTER JOIN HumanResources.EmployeePayHistory ON HumanResources.Employee.BusinessEntityID=HumanResources.EmployeePayHistory.BusinessEntityID
ORDER BY Rate DESC

SELECT 'HumanResources.Employee' AS JobTitle, VacationHours,SickLeaveHours
FROM HumanResources.Employee
UNION
SELECT 'HumanResources.EmployeePayHistory' AS Rate, RateChangeDate,PayFrequency
FROM HumanResources.EmployeePayHistory




