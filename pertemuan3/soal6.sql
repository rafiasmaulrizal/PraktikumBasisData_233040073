SELECT 
    E.empid, 
    E.firstname, 
    E.lastname
FROM 
    HR.Employees AS E
LEFT JOIN
	Sales.Orders O 
ON 
	e.empid = o.empid AND o.orderdate >= '2016-05-01'
WHERE 
    O.orderid IS NULL;