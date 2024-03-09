use amazon;

select * from superstore_final_dataset;

-- Top 10 selling products by quantity
SELECT Product_Name,SUM(Sales) AS Total_Sales FROM superstore_final_dataset
GROUP BY Product_Name ORDER BY Total_Sales DESC LIMIT 10;

-- Display the list of records for the sales with in south region.
select * from superstore_final_dataset where Region = 'South';

-- Display the list of records for the sales that are not south region.
select * from superstore_final_dataset where Region != 'South';

-- How are sales distributed across different customer segments?
SELECT Segment, SUM(Sales) AS Total_Sales FROM superstore_final_dataset
GROUP BY Segment;

-- What is the total sales revenue by country and region?
SELECT Country, Region, SUM(Sales) AS Total_Sales FROM superstore_final_dataset
GROUP BY Country, Region;

-- How many orders were shipped late by ship mode?
SELECT Ship_Mode, COUNT(*) AS Late_Shipments FROM superstore_final_dataset
WHERE Ship_Date > Order_Date GROUP BY Ship_Mode;

-- How many repeat customers do we have?
SELECT Customer_ID, COUNT(DISTINCT Order_ID) AS RepeatOrders FROM superstore_final_dataset
GROUP BY Customer_ID HAVING COUNT(DISTINCT Order_ID) > 1;




