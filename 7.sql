SELECT Title, genre, Rating
FROM movies AS m1
WHERE Rating = (
  SELECT MAX(Rating)
  FROM movies AS m2
  WHERE m2.genre = m1.genre
);