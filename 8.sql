SELECT Title, genre, Worldwide
FROM (
  SELECT Title, genre, Worldwide,
         NTILE(5) OVER (ORDER BY Worldwide DESC) as bucket
  FROM movies
  WHERE genre = 'Sci-Fi'
)
WHERE bucket = 1
ORDER BY Worldwide DESC, Title;