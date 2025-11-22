


USE AdventureWorks2019;

--Using Joins
SELECT e.BusinessEntityID,e.jobtitle,e.hiredate,ph.rate,ph.PayFrequency,rate*PayFrequency as Salary
FROM HumanResources.Employee e
LEFT JOIN humanresources.EmployeePayHistory ph ON e.BusinessEntityID=ph.BusinessEntityID
where e.currentflag=1
ORDER BY rate DESC



--Getting Employees with Vacation Hours higher than the Average
SELECT BusinessEntityID,jobtitle,organizationlevel,vacationhours
FROM humanresources.employee
where vacationhours>
(SELECT avg(VacationHours) as average_vac_hrs 
       from humanresources.employee);


--Employees whose rate is higher than average rate

SELECT BusinessEntityID,ROUND(Rate,2) AS Rate
FROM humanresources.EmployeePayHistory
WHERE rate> (SELECT avg(rate) as average_rate from humanresources.EmployeePayHistory)


--Get top 5 categories by total sales
SELECT  TOP 5  q.name as product_category,sum(q.sales) as total_sales
from( SELECT p.name,p.ProductNumber,sd.OrderQty,ROUND(sd.OrderQty*sd.UnitPrice,2) as Sales
FROM sales.salesorderdetail sd
LEFT JOIN production.product p ON sd.ProductID=p.ProductID)q
GROUP BY name
ORDER BY total_sales DESC

--Get products top 10 products with high quantity and sales below average
SELECT TOP 10
    ps.Name,
    ps.ProductNumber,
    ps.order_count,
    ps.total_sales
FROM (
    
    SELECT  
        p.Name,
        p.ProductNumber,
        COUNT(*) AS order_count,
        SUM(sd.OrderQty * sd.UnitPrice) AS total_sales
    FROM sales.SalesOrderDetail sd
    JOIN production.Product p
        ON sd.ProductID = p.ProductID
    GROUP BY p.Name, p.ProductNumber
) ps
WHERE ps.total_sales < (
   
    SELECT AVG(product_totals.total_sales)
    FROM (
        SELECT SUM(sd.OrderQty * sd.UnitPrice) AS total_sales
        FROM sales.SalesOrderDetail sd
        GROUP BY sd.ProductID
    ) AS product_totals
)
ORDER BY ps.order_count DESC;
