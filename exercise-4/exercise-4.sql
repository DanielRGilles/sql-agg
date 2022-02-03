-- the average film length by category
-- include the category name and avg length
SELECT name,
AVG(film.length)
FROM category
INNER JOIN film_category
ON category.category_id = film_category.category_id
INNER JOIN film
ON film.film_id = film_category.film_id
GROUP BY
category.name

