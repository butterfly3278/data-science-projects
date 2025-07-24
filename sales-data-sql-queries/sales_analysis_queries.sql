
-- Create the database and table
CREATE DATABASE sales_portfolio;
USE sales_portfolio;

CREATE TABLE sales (
    InvoiceID    VARCHAR(20)  NOT NULL,
    InvoiceDate  DATE         NOT NULL,
    CustomerID   INT          NOT NULL,
    Country      VARCHAR(60)  NOT NULL,
    ProductID    VARCHAR(20)  NOT NULL,
    Product      VARCHAR(100) NOT NULL,
    Category     VARCHAR(50)  NOT NULL,
    UnitPrice    DECIMAL(10,2) NOT NULL,
    Quantity     INT NOT NULL,
    Total        DECIMAL(12,2) NOT NULL,
    PRIMARY KEY (InvoiceID, ProductID)
);

-- Show all records
SELECT * FROM sales;

-- Total Revenue
SELECT SUM(Total) AS Total_Revenue FROM sales;

-- Top 5 Best-Selling Products
SELECT Product, SUM(Quantity) AS Units_Sold
FROM sales
GROUP BY Product
ORDER BY Units_Sold DESC
LIMIT 5;

-- Monthly Revenue Trend
SELECT DATE_FORMAT(InvoiceDate, '%Y-%m') AS Month, SUM(Total) AS Revenue
FROM sales
GROUP BY Month
ORDER BY Month;

-- Revenue by Country
SELECT Country, SUM(Total) AS Revenue
FROM sales
GROUP BY Country
ORDER BY Revenue DESC;

-- Repeat Customers (more than one invoice)
SELECT CustomerID, COUNT(DISTINCT InvoiceID) AS Orders
FROM sales
GROUP BY CustomerID
HAVING Orders > 1
ORDER BY Orders DESC;

-- Complex Query 1: Average basket size per customer
SELECT CustomerID,
       COUNT(DISTINCT InvoiceID) AS TotalOrders,
       SUM(Quantity) AS TotalItems,
       ROUND(SUM(Quantity)/COUNT(DISTINCT InvoiceID), 2) AS AvgBasketSize
FROM sales
GROUP BY CustomerID
ORDER BY AvgBasketSize DESC
LIMIT 10;

-- Complex Query 2: Monthly average order value per country
SELECT Country, DATE_FORMAT(InvoiceDate, '%Y-%m') AS Month,
       ROUND(AVG(Total), 2) AS AvgOrderValue
FROM sales
GROUP BY Country, Month
ORDER BY Country, Month;

-- Complex Query 3: Products sold in more than 5 countries
SELECT Product, COUNT(DISTINCT Country) AS CountryCount
FROM sales
GROUP BY Product
HAVING CountryCount > 5
ORDER BY CountryCount DESC;

-- Complex Query 4: Customers with highest total spend
SELECT CustomerID, SUM(Total) AS TotalSpend
FROM sales
GROUP BY CustomerID
ORDER BY TotalSpend DESC
LIMIT 10;

-- Complex Query 5: Best-selling category by revenue
SELECT Category, SUM(Total) AS Revenue
FROM sales
GROUP BY Category
ORDER BY Revenue DESC;
