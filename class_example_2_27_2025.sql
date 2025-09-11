select c.custid, o.orderdate, c.contactname
from Sales.Customers c join Sales.Orders o on c.custid = o.custid
where year(orderdate) = 2014
order by contactname

--
select hiredate, year(hiredate) as fiscalyrHire_wrong,
'correctFiscalHiredate' = 
CASE
when month(hiredate) in (10,11,12) then year(hiredate) + 1
Else year(hiredate)END
from [HR].[Employees]

select * from hr.employees