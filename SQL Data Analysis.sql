create database if not exists ecommerces;

use ecommerces;

SELECT * FROM ecommerce_dataset LIMIT 10;

SELECT * 
FROM ecommerce_dataset 
ORDER BY Price DESC 
LIMIT 10;

SELECT * 
FROM ecommerce_dataset 
WHERE ProductCategory = 'Clothing';

SELECT ProductID, SUM(SalesVolume) AS TotalSold
FROM ecommerce_dataset
GROUP BY ProductID
ORDER BY TotalSold DESC;

SELECT ProductCategory, AVG(Price) AS AvgPrice
FROM ecommerce_dataset
GROUP BY ProductCategory;



SELECT ProductID, ProductCategory, Brand, SalesVolume, MonthlySales
FROM ecommerce_dataset
ORDER BY SalesVolume DESC
LIMIT 1000;


SELECT * 
FROM ecommerce_dataset 
WHERE SalesVolume > (
  SELECT AVG(SalesVolume)
  FROM ecommerce_dataset
);

CREATE VIEW high_value_orders AS
SELECT ProductID SalesVolume, Price, (SalesVolume * Price) AS Total
FROM ecommerce_dataset
WHERE Price > 100;

SELECT * FROM high_value_orders;

CREATE INDEX idx_productid2 ON ecommerce_dataset(ProductID);





