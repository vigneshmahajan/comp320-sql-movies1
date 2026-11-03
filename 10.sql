SELECT Title, genre, Runtime
FROM movies AS m1
WHERE CAST(REPLACE(Runtime, ' min', '') AS INTEGER) = (
  SELECT MAX(CAST(REPLACE(Runtime, ' min', '') AS INTEGER))
  FROM movies AS m2
  WHERE m2.genre = m1.genre
);