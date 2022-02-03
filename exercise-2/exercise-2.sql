-- the top 10 cities with the most total rental payment amount
-- include the city name and sum
-- use SUM to sum up the amounts
SELECT city.city,
SUM(payment.amount)
FROM city
INNER JOIN address
ON city.city_id = address.city_id
INNER JOIN customer
ON address.address_id = customer.address_id
INNER JOIN rental
ON rental.customer_id = customer.customer_id
INNER JOIN payment
ON payment.rental_id = rental.rental_id
GROUP BY
city.city
ORDER BY
sum desc
LIMIT 10