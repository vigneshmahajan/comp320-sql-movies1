SELECT Title, genre, Rating, MetaCritic
FROM movies
WHERE MetaCritic > (Rating * 10)
ORDER BY Title;