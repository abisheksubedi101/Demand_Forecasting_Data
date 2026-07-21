USE project2;

CREATE or replace view competionprice as

SELECT product_id,
price,
competitor_pricing,
CASE
 WHEN price < competitor_pricing then 'we_are_cheaper'
 WHEN price > competitor_pricing then 'we_are_expensive'
 ELSE 'equal_price'
 END as price_position ,
 AVG( unit_sold) as average_unitsold
 FROM project2.demand_forecasting
 GROUP BY price_position,product_id,price,competitor_pricing;

 SELECT * FROM competionprice;