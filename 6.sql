SELECT Title, genre, TotalVotes
FROM movies AS m1
WHERE TotalVotes = (
  SELECT MAX(TotalVotes)
  FROM movies AS m2
  WHERE m2.genre = m1.genre
);