# Digital User Churn Dashboard

Churn dashboard adalah alat visualisasi yang dirancang untuk memantau dan menganalisis tingkat churn pelanggan dalam suatu periode tertentu. Dashboard merupakan tugas magang saya di Rakamin Academy rakamin.com, menyediakan wawasan mendalam tentang tren perilaku pelanggan dan faktor-faktor yang mempengaruhi churn, membantu tim untuk mengambil keputusan strategis dalam upaya mempertahankan pelanggan.

## Table of Contents:

- Dataset
- Table Master
- Dashboard
  
## Dataset
- Dataset terdiri dari 4 tabel yakni customer, order, product, dan product category
- Dataset dapat diakses di https://view.officeapps.live.com/op/view.aspx?src=https%3A%2F%2Frakamin-lms.s3.ap-southeast-1.amazonaws.com%2Fvix-assets%2FbankmuamalatBI%2Fdataset_task%2B5.xlsx&wdOrigin=BROWSELINK

## Table Master
Tabel master adalah tabel yang dihasilkan dari join beberapa tabel yang akan digunakan untuk proses analisis nantinya. Query untuk tabel master sebagai berikut
```sql
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
```

## Dashboard
![image](https://github.com/user-attachments/assets/675ce5b4-568e-477d-a5b8-c47ff94df417)
