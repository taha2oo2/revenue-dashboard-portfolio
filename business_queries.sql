USE RevenuePortfolio;

-- Query 1: Total Revenue & Profit by Country
SELECT 
    Country,
    SUM(Gross_Sales) AS Total_Revenue,
    SUM(TRY_CAST(REPLACE(REPLACE(Profit, ',', ''), '$', '') AS FLOAT)) AS Total_Profit,
    ROUND(SUM(TRY_CAST(REPLACE(REPLACE(Profit, ',', ''), '$', '') AS FLOAT)) / SUM(Gross_Sales) * 100, 2) AS Profit_Margin_Pct
FROM FinancialData
GROUP BY Country
ORDER BY Total_Revenue DESC;

-- Query 2: Best Performing Products
SELECT 
    Product,
    SUM(Units_Sold) AS Total_Units,
    SUM(Gross_Sales) AS Total_Revenue,
    SUM(TRY_CAST(REPLACE(REPLACE(Profit, ',', ''), '$', '') AS FLOAT)) AS Total_Profit
FROM FinancialData
GROUP BY Product
ORDER BY Total_Profit DESC;

-- Query 3: Monthly Revenue Trend
SELECT 
    Year,
    Month_Number,
    Month_Name,
    SUM(Gross_Sales) AS Monthly_Revenue,
    SUM(TRY_CAST(REPLACE(REPLACE(Profit, ',', ''), '$', '') AS FLOAT)) AS Monthly_Profit
FROM FinancialData
GROUP BY Year, Month_Number, Month_Name
ORDER BY Year, Month_Number;

-- Query 4: Revenue by Customer Segment
SELECT 
    Segment,
    COUNT(*) AS Total_Transactions,
    SUM(Gross_Sales) AS Total_Revenue,
    SUM(TRY_CAST(REPLACE(REPLACE(Profit, ',', ''), '$', '') AS FLOAT)) AS Total_Profit,
    ROUND(AVG(Gross_Sales), 2) AS Avg_Deal_Size
FROM FinancialData
GROUP BY Segment
ORDER BY Total_Revenue DESC;

-- Query 5: Discount Impact on Profit
SELECT 
    Discount_Band,
    COUNT(*) AS Transactions,
    SUM(Gross_Sales) AS Gross_Revenue,
    SUM(TRY_CAST(REPLACE(REPLACE(Profit, ',', ''), '$', '') AS FLOAT)) AS Total_Profit,
    ROUND(AVG(TRY_CAST(REPLACE(REPLACE(Profit, ',', ''), '$', '') AS FLOAT) / NULLIF(Gross_Sales, 0) * 100), 2) AS Profit_Margin_Pct
FROM FinancialData
GROUP BY Discount_Band
ORDER BY Gross_Revenue DESC;

-- Query 6: Top 5 Country + Product Combinations
SELECT TOP 5
    Country,
    Product,
    SUM(Gross_Sales) AS Revenue,
    SUM(TRY_CAST(REPLACE(REPLACE(Profit, ',', ''), '$', '') AS FLOAT)) AS Profit
FROM FinancialData
GROUP BY Country, Product
ORDER BY Revenue DESC;