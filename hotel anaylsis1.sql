with hotels as (
SELECT * FROM dbo.['2018$']
union 
SELECT * FROM dbo.['2019$']
union 
SELECT * FROM dbo.['2020$'])


 --SQL Revenue analytics 
/*SELECT arrival_date_year,hotel,round(sum((stays_in_weekend_nights+stays_in_week_nights)*adr),2)
AS Revenue 
From hotels 
GROUP BY arrival_date_year,hotel */ 


-- JOIN TABLE 

SELECT * FROM hotels
LEFT JOIN dbo.market_segment$
on hotels.market_segment= market_segment$.market_segment
LEFT JOIN dbo.meal_cost$ 
on meal_cost$.meal=hotels.meal 

