SELECT genre, COUNT(*) AS movie_count
FROM movies
GROUP BY genre;