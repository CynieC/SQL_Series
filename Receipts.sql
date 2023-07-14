USE AdventureWorks2019

SELECT * 
FROM production.TransactionHistory


SELECT * 
FROM purchasing.ProductVendor

SELECT Quantity, LastReceiptDate,AverageLeadTime
FROM production.TransactionHistory
INNER JOIN purchasing.ProductVendor
ON Production.TransactionHistory.ProductID =Purchasing.ProductVendor.ProductID



SELECT 
      DATENAME(YEAR,LastReceiptDate) AS ReceiptYear,
	  COUNT (*) AS TotalReceipts
FROM purchasing.ProductVendor
GROUP BY DATENAME(YEAR,LastReceiptDate)
ORDER BY DATENAME(YEAR,LastReceiptDate) 





