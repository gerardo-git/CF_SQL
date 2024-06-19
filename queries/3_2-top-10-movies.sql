-- this query selects the top 10 movies regarding their revenue

SELECT 
A.title, F.name AS genre,
COALESCE(SUM(D.amount), 0) AS total_movie_revenue,
A.rental_rate,
COALESCE(AVG(EXTRACT(DAY FROM (C.return_date-C.rental_date))), 0) AS average_customer_rental_duration, 
A.rental_duration AS inventory_rental_duration 
FROM film A
LEFT JOIN inventory B ON A.film_id = B.film_id
LEFT JOIN rental C ON B.inventory_id = C.inventory_id
LEFT JOIN payment D ON C.rental_id = D.rental_id
LEFT JOIN film_category E ON A.film_id = E.film_id
LEFT JOIN category F ON F.category_id = E.category_id
GROUP BY A.title, F.name, A.rental_rate, A.rental_duration
ORDER BY total_movie_revenue DESC
LIMIT 10;
