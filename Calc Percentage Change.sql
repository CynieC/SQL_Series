/*Create table*/
CREATE TABLE percent_change (
department varchar(20),
spend_2014 numeric(10,2),
spend_2017 numeric(10,2))


/*Insert values*/
 INSERT INTO percent_change
VALUES
('Building', 250000, 289000),
('Assessor', 178556, 179500),
('Library', 87777, 90001),
('Clerk', 451980, 650000),
('Police', 250000, 223000),
('Recreation', 199000, 195000)

SELECT * FROM percent_change

/*Year-on-Year Change*/
SELECT department, spend_2014,spend_2017,
ROUND((spend_2017-spend_2014)/spend_2014*100,1) AS 'pct_change'
FROM percent_change