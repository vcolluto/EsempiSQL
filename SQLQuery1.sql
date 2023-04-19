alter table prodotto drop constraint FK_Prodotto_Categoria
drop table Categoria

insert into Prodotto(Descrizione, IdCategoria, Prezzo)
values('Formaggio',1, 9.37)

alter table prodotto alter column prezzo decimal(9,2)

select Descrizione,Prezzo, Prezzo*1.22 as PrezzoConIva from Prodotto
where id<>1

delete from prodotto where id=2

DELETE FROM 
Prodotto
WHERE id=2




select * from  Products
where  (CategoryID=2 OR CategoryID=3) AND UnitPrice>15
order by CategoryId DESC, UnitPrice 

update Products set UnitPrice=null where Products.ProductID=76

SELECT
CategoryID, Products.SupplierID,
MIN(UnitPrice) as PrezzoMinimo,  
MAX(UnitPrice) as PrezzoMassimo,
AVG(UnitPrice) as PrezzoMedio,
SUM(UnitPrice) as TotalePrezzi,
COUNT(UnitPrice) as NumeroPrezzi
FROM Products
GROUP BY CategoryID, Products.SupplierID

select *, NumeroRighe+NumeroPrezzi AS TOTALE from 
(select 
count(*) as NumeroRighe ,
COUNT(UnitPrice) as NumeroPrezzi
from Products
where UnitPrice<30) as tmp


update Products set CategoryID=1 where CategoryID is null


select 
ProductID,ProductName,CategoryName, CompanyName as SupplierName, 
[Order Details].Quantity from 
Products inner join Categories
on Products.CategoryID=Categories.CategoryID
inner join Suppliers
on Products.SupplierID=Suppliers.SupplierID
inner join [Order Details] 
on [Order Details].ProductID=Products.ProductID



--inner join fatto tramite un cross join
select * from Categories ,  Products
where Products.CategoryID=Categories.CategoryID
order by Categories.CategoryID

select * from Categories

insert into Categories(CategoryName)
values('Casalinghi')