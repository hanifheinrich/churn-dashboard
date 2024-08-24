SELECT 
A.Date as Order_date,
E.CategoryName as Category_Name,
E.ProdName as Product_Name,
E.Price as Product_Price,
A.Quantity  as Order_qty,
E.Price*A.Quantity as Total_Sales,
B.CustomerEmail as Cust_Email,
B.CustomerCity as Cust_City,


FROM Task3.Orders as A INNER JOIN Task3.Customers as B 
ON A.CustomerID = B.CustomerID
INNER JOIN  
(SELECT D.CategoryName, C.ProdName, C.Price, C.ProdNumber 
FROM Task3.Products as C INNER JOIN Task3.ProductCategory as D
ON C.Category = D.CategoryID) E
ON A.ProdNumber = E.ProdNumber
ORDER BY Order_date ASC