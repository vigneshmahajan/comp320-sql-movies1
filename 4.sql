SELECT Title
FROM movies
WHERE genre = 'Romance'

INTERSECT

SELECT Title
FROM movies
WHERE genre = 'Sci-Fi';