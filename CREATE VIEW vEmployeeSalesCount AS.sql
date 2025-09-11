CREATE VIEW vEmployeeSalesCount AS
SELECT
	COUNT(e.empid) AS count_order,
	e.lastname,
	e.firstname,
	e.hireyear, 
	year(o.orderdate) AS orderyear
From dbo.EmployeeYear e
JOIN Sales.Orders o ON e.hireyear = o.orderyear
WHERE hireyear in (2013, 2014)
GROUP BY order_count, e.lastname, e.lastname, e.hireyear