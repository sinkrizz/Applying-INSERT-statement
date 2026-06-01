DELETE FROM rental
WHERE inventory_id IN (
    SELECT inventory_id
    FROM inventory
    WHERE film_id = (
        SELECT film_id
        FROM film
        WHERE title = 'Matrix'
        LIMIT 1
    )
);

DELETE FROM inventory
WHERE film_id = (
    SELECT film_id
    FROM film
    WHERE title = 'Matrix'
    LIMIT 1
);

DELETE FROM payment
WHERE customer_id = (
    SELECT customer_id
    FROM customer
    WHERE first_name = 'Sharafat'
      AND last_name = 'Yerlankyzy'
    LIMIT 1
);

DELETE FROM rental
WHERE customer_id = (
    SELECT customer_id
    FROM customer
    WHERE first_name = 'Sharafat'
      AND last_name = 'Yerlankyzy'
    LIMIT 1
);

-- Difference between DELETE and TRUNCATE:
-- DELETE removes selected rows and can use a WHERE clause.
-- TRUNCATE removes all rows from a table and cannot use a WHERE clause.
-- DELETE can remove one row, several rows, or all rows.
-- TRUNCATE always removes all rows from the table.
-- TRUNCATE is generally faster and resets AUTO_INCREMENT.