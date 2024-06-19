-- top 10 cities regarding customers

SELECT 
E.city AS city,
F.country AS country,
COUNT(DISTINCT C.customer_id) AS count_of_customers,
SUM(A.amount) AS total_city_revenue
FROM 
payment A
INNER JOIN 
rental B ON A.rental_id = B.rental_id
INNER JOIN 
customer C ON B.customer_id = C.customer_id
INNER JOIN 
address D ON C.address_id = D.address_id
INNER JOIN 
city E ON D.city_id = E.city_id
INNER JOIN 
country F ON E.country_id = F.country_id
WHERE country IN 
('India', 'China', 'United States', 'Japan','Mexico', 'Brazil',
'Russian Federation', 'Philippines', 'Turkey', 'Indonesia')
GROUP BY 
E.city, F.country
ORDER BY 
total_city_revenue DESC
LIMIT 10;
