-- Top 10 highest rated restaurants
SELECT restaurant_name, city, avg_ratings, total_ratings
FROM restaurants
ORDER BY avg_ratings DESC, total_ratings DESC
LIMIT 10;

-- Average rating and price by city
SELECT city, 
       ROUND(AVG(avg_ratings),2) AS avg_rating,
       ROUND(AVG(price),2) AS avg_price,
       COUNT(*) AS restaurant_count
FROM restaurants
GROUP BY city
ORDER BY avg_rating DESC;

-- Most common food types
SELECT food_type, COUNT(*) AS count
FROM restaurants
GROUP BY food_type
ORDER BY count DESC
LIMIT 10;

-- Price vs delivery time correlation check
SELECT 
    CASE 
        WHEN price < 200 THEN 'Budget'
        WHEN price BETWEEN 200 AND 500 THEN 'Mid-range'
        ELSE 'Premium'
    END AS price_tier,
    ROUND(AVG(delivery_time),1) AS avg_delivery_time,
    ROUND(AVG(avg_ratings),2) AS avg_rating
FROM restaurants
GROUP BY price_tier;

-- Cities with fastest average delivery
SELECT city, ROUND(AVG(delivery_time),1) AS avg_delivery_time
FROM restaurants
GROUP BY city
ORDER BY avg_delivery_time ASC
LIMIT 10;