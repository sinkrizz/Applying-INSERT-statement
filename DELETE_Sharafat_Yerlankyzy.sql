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
