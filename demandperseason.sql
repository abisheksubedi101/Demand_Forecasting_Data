USE project2;

CREATE or replace view  demandofseason as

SELECT 
seasonality,
epidemic,
sum(unit_sold) as total_unit_sold,
avg(demand) as demand_perseason

FROM project2.demand_forecasting
GROUP BY seasonality,epidemic
ORDER BY seasonality;

SELECT * FROM demandofseason;

