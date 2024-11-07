-------------1-------------
Select Name , Price
FROM [dbo].[Products]
Where Price>500;
-------------2-------------
Select YEAR(OrderDate) As OrderDate,Sum(TotalAmount) As TotalAmount
From [dbo].[Orders]
Group by YEAR(OrderDate);
-------------3-------------
Select c.Name AS Category , Sum(o.TotalAmount) AS TotalAmount
From [dbo].[Orders] o
Join [dbo].[Products] p ON p.Id = o.ProductId
Join [dbo].[Categories] c ON c.Id = p.CategoryId
Group By c.Name
-------------4-------------
Select p.Name , p.Price
From [dbo].[Products] p
Order By Price DESC;
-------------5-------------
Select c.Name As CustomerName ,COUNT(o.Id) AS OrderCount
From [dbo].[Orders] o 
Join [dbo].[Customers] c ON c.Id = o.CustomerId
Group by c.Name;
-------------6-------------
Select c.Id AS CategoryName , AVG(p.Price) AS AveragePrice
From [dbo].[Products] p
Join [dbo].[Categories] c ON c.Id =p.CategoryId
Group By c.Id;
-------------7-------------
Select p.Name AS ProductName , c.Name As CategoryName
From [dbo].[Products] p
Join [dbo].[Categories] c ON c.Id = p.CategoryId
Order By p.Name;
-------------8-------------
Select c.Name As CategoryName,SUm(o.TotalAmount) As TotalAmount
From [dbo].[Orders] o
Join [dbo].[Products] p ON p.Id =o.ProductId
Join [dbo].[Categories] c ON c.Id =p.CategoryId
WHERE YEAR(o.OrderDate)=2023
Group By c.Name;
-------------9-------------
Select MONTH(o.OrderDate) AS OrderMonth , COUNT(o.Id) AS OrderCount
From [dbo].[Orders] o
Group By MONTH(o.OrderDate)
-------------10-------------
 Select c.Name AS Customer ,SUM(o.TotalAmount) AS TotalAmount
 From [dbo].[Orders] o
 join [dbo].[Customers] c ON c.Id=o.CustomerId
 Group By c.Name
-------------11-------------
Select c.Name AS Category,COUNT(o.Id) AS OrdreCount
From [dbo].[Orders] o
join [dbo].[Products] p ON p.Id=o.ProductId
Join [dbo].[Categories] c ON c.Id=p.CategoryId
Group By c.Name;
-------------12-------------
select c.Name AS Customer , COUNT(o.Id) AS OrderCOunt
From [dbo].[Orders] o
Join [dbo].[Customers] c ON c.Id = o.CustomerId
Group By c.Name
Order By OrderCOunt DESC;
-------------13-------------
Select YEAR(o.OrderDate) AS OrderYear , COUNT(o.Id) AS OrderCOunt
From [dbo].[Orders] o
Group By YEAR(o.OrderDate)
-------------14-------------
Select p.Name AS ProductName,COUNT(DISTINCT o.CustomerId) AS CustomerCount
From [dbo].[Orders] o
Join [dbo].[Products] p ON p.Id=o.ProductId
Group By p.Name
Order By CustomerCount DESC;

