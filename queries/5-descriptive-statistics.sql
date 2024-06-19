-- descriptive statistics for several columns
SELECT 	
MIN(release_year) AS minimum_release_year,	
MAX(release_year) AS maximum_release_year,	
ROUND(AVG(release_year),0) AS average_release_year,	
	
MIN(rental_duration) AS minimum_rental_duration,	
MAX(rental_duration) AS maximum_rental_duration,	
ROUND(AVG(rental_duration),3) AS average_rental_duration,	
	
MIN(rental_rate) AS minimum_rental_rate,	
MAX(rental_rate) AS maximum_rental_rate,	
ROUND(AVG(rental_rate),2) AS average_rental_rate,	
	
MIN(length) AS minimum_length,	
MAX(length) AS maximum_length,	
ROUND(AVG(length),3) AS average_length,	
	
MIN(replacement_cost) AS minimum_replacement_cost,	
MAX(replacement_cost) AS maximum_replacement_cost,	
ROUND(AVG(replacement_cost),3) AS average_replacement_cost	
	
FROM film;	
