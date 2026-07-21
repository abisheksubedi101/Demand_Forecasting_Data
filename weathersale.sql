USE project2;

CREATE or replace view weathersale as

SELECT
 category,
 weather_condition,
AVG(unit_sold) as total_soldunit
from project2.demand_forecasting
GROUP BY category,weather_condition
ORDER BY category,total_soldunit DESC;

SELECT * from weathersale;

