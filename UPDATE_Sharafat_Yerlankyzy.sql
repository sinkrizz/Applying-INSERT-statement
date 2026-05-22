UPDATE film
SET
    rental_duration = 21,
    rental_rate = 9.99
WHERE title = 'Matrix';

SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    COUNT(DISTINCT r.rental_id) AS rental_count,
    COUNT(DISTINCT p.payment_id) AS payment_count
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id
JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.customer_id
HAVING rental_count >= 10
   AND payment_count >= 10
LIMIT 1;

UPDATE customer
SET
    first_name = 'Sharafat',
    last_name = 'Yerlankyzy',
    email = 'sharafat@gmail.com',
    address_id = 1,
    create_date = CURRENT_DATE
WHERE customer_id = 1;