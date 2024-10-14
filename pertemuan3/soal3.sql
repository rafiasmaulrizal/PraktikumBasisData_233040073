/*Tabel Customers dan Orders diberikan dengan nama penuh dalam SELECT, tetapi hanya diberi alias C dan O dalam Join*/

SELECT 
    C.custid, 
    C.companyname, 
    O.orderid, 
    O.orderdate
FROM 
    Sales.Customers AS C  
    INNER JOIN Sales.Orders AS O  
    ON C.custid = O.custid;