
-- use database
use widgets;

-- display all the information in store_sales
SELECT * FROM  store_sales;


-- Find the average sales 
SELECT store, category,(SELECT AVG(unit_sales) FROM store_sales) AS sales_avg
FROM store_sales;


/*Find the stores
option a and b
*/

-- Option a
SELECT store, category,unit_sales
FROM store_sales
WHERE unit_sales IN (SELECT unit_sales FROM store_sales);

-- option b
SELECT store, category,unit_sales
FROM store_sales
WHERE EXISTS (SELECT unit_sales FROM store_sales);


/* Find the stores whose total_sales are highre than the average sales
Option a and b
*/

-- option a
SELECT * 
FROM (SELECT store,SUM(unit_sales) AS total_sales
	           FROM store_sales
			   GROUP BY store) sales
JOIN (SELECT AVG(total_sales) as sales
                FROM (SELECT store,SUM(unit_sales) AS total_sales
				FROM store_sales
                GROUP BY store) z)avg_sales
	  ON sales.total_sales > avg_sales.sales;

-- option b #most preferred method as compared to option a
WITH sales as (SELECT store,SUM(unit_sales) AS total_sales
				FROM store_sales
                GROUP BY store)
SELECT * 
FROM sales
JOIN (SELECT AVG(total_sales) as sales
                FROM (SELECT store,SUM(unit_sales) AS total_sales
				FROM store_sales
                GROUP BY store) z) avg_sales
ON sales.total_sales > avg_sales.sales;

-- Find stores that have unit_sales above 600
SELECT store, category, unit_sales
FROM store_sales
WHERE store in (SELECT store FROM store_sales WHERE unit_sales > 600);




