SELECT Title, genre, Worldwide
FROM (
  SELECT Title, genre, Worldwide,
         NTILE(5) OVER (PARTITION BY genre ORDER BY Worldwide DESC) as bucket
  FROM movies
)
WHERE bucket = 1
ORDER BY genre, Worldwide DESC, Title;