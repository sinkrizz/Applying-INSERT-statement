INSERT INTO film (
    title,
    description,
    release_year,
    language_id,
    length,
    rating,
    rental_rate,
    rental_duration,
    genre
)

VALUES (
    'Matrix',
    'A computer hacker discovers the truth about reality and his role in the war against intelligent machines.',
    1999,
    1,
    136,
    'R',
    4.99,
    14,
    'Science Fiction'
);

SET @film_id = LAST_INSERT_ID();

INSERT INTO actor (first_name, last_name)
VALUES ('Keanu', 'Reeves');

SET @actor1_id = LAST_INSERT_ID();

INSERT INTO actor (first_name, last_name)
VALUES ('Laurence', 'Fishburne');

SET @actor2_id = LAST_INSERT_ID();

INSERT INTO actor (first_name, last_name)
VALUES ('Carrie-Anne', 'Moss');

SET @actor3_id = LAST_INSERT_ID();

INSERT INTO film_actor (actor_id, film_id)
VALUES
(@actor1_id, @film_id),
(@actor2_id, @film_id),
(@actor3_id, @film_id);

INSERT INTO inventory (film_id, store_id)
VALUES
(@film_id, 1),
(@film_id, 2);