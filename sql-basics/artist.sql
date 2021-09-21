-- Add 3 new artists to the artist table. (It already exists.)

IF EXISTS artists
(
    INSERT INTO artists (name)
    VALUES 
        ('rezz'),
        ('rezz'),
        ('rezz'),
        ('rezz'),
        ('rezz')
)
    BEGIN
        CREATE TABLE orders(
    artist_id SERIAL PRIMARY KEY,
    namee VARCHAR(20)
);
END;
-- Select 10 artists in reverse alphabetical order.
select TOP 10 
from artists, DESC
-- Select 5 artists in alphabetical order.
select TOP 5
from artists, ASC
-- Select all artists that start with the word ‘Black’.
SELECT * FROM artists WHERE namee LIKE 'Black%' or namee LIKE '% Black%'

-- Select all artists that contain the word ‘Black’.
SELECT *
FROM artists
WHERE name LIKE '%Black%'
