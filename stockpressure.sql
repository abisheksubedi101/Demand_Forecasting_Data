use project2;

CREATE or replace view stockpressure as

SELECT
product_id,
category,
sum(unit_ordered) as total_ordered,
sum(inventory_level) as total_stock,
ROUND(sum(unit_ordered)/sum(inventory_level),2) as stock_pressure_index

from project2.demand_forecasting
GROUP BY product_id,category
-- HAVING stock_pressure_index > 1.0
order by  stock_pressure_index DESC;

SELECT * FROM stockpressure;