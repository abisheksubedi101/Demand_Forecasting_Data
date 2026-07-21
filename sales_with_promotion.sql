USE project2;

CREATE or replace view saleswith_promotion as
SELECT 
promotion,
round(AVG(unit_sold),2) AS avg_unitsold,
round(AVG(price),2) as avg_unitprice,
round(sum(unit_sold * price),2) as total_revenue
FROM project2.demand_forecasting
group BY promotion
ORDER BY total_revenue DESC;


SELECT * from saleswith_promotion
