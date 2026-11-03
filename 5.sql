SELECT Title, genre, Budget
FROM movies AS m1
WHERE Budget > (
  SELECT AVG(Budget)
  FROM movies AS m2
  WHERE m2.genre = m1.genre
);