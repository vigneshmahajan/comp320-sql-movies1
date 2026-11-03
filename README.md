`movies.db` is a SQLite database file that contains information about movies, including their titles, release dates, genres, and ratings.

Here is the schema of the `movies` table in the database:

```sql
CREATE TABLE movies(
  Movie_id TEXT,
  Title TEXT,
  Rating NUM,
  TotalVotes INT,
  MetaCritic NUM,
  Budget REAL,
  Runtime TEXT,
  Domestic INT,
  Worldwide REAL,
  genre TEXT
);
```

One thing to note is that some movies have many genres.  In that case there will be multiple rows for the same movie, each with a different genre. For example, if a movie has both "Action" and "Adventure" genres, there will be two rows in the `movies` table for that movie, one for each genre.

For example, the movie "Inception" might have the following rows in the `movies` table:

```
46824|Inception (2010)|8.8|1609713|74|160000000.0|148 min|292576195|825532764.0|Action
46824|Inception (2010)|8.8|1609713|74|160000000.0|148 min|292576195|825532764.0|Adventure
46824|Inception (2010)|8.8|1609713|74|160000000.0|148 min|292576195|825532764.0|Sci-Fi
```

# Group By and Having

## Challenge 1

How many movies are there in each genre?  Fields to return: genre, movie_count.

## Challenge 2

How many movies have a rating higher than 8.0 in each genre?  Fields to return: genre, movie_count.

## Challenge 3

Show movies where metacritic score is higher the rating.  Fields to return: Title, genre, Rating, MetaCritic.  Note that metracritic score is on a scale of 0-100, while rating is on a scale of 0-10.  You will need to convert the scores somehow to make them comparable.

## Challenge 4

Find movies that are in both the 'Romance' and 'Sci-Fi' genres.  Fields to return: Title.


# Correlated Subqueries

## Challenge 5

Write a query to find all movies whose budget is higher than the average budget of all movies in the same genre. Fields to return: Title, genre, Budget

### Step 1

Find average budget for the genre 'Sci-Fi':

### Step 2

Find movies in the 'Sci-Fi' genre with a budget higher than the average budget calculated in Step 1, using Step 1 as a subquery.

### Step 3

Here's the leap, you will need to replace Sci-fi from steps 1 and 2, but replace the hard coded 'Sci-Fi' with a reference to the genre in the outer query.  

## Challenge 6

Write a query to find all movies with the maximum TotalVotes in each genre.  Fields to return: Title, genre, totalVotes.  This shows movies with the highest engagement in each genre.

## Challenge 7

Find the movie(s) with the maximum Rating within their respective genre.  Fields to return: Title, genre, Rating

## Challenge 8

Find all Sci-Fi movies that are in the top 20% of worldwide earnings for all Sci-Fi movies.  Fields to return: Title, genre, Worldwide

## Challenge 9

Find al movies that are in the top 20% of worldwide earnings for all movies in their respective genre.  Fields to return: Title, genre, Worldwide

## Challenge 10

Within each genre, which movie has the longest runtime? Fields to return: Title, Genre, and Runtime.  Note that the Runtime field is stored as text, so you may need to convert it to a numeric value for comparison.


# Hand-in

Test your solution by executing the following command on the bash terminal:

```shell
$ pytest
```

When you are satisified, execute the following commands to submit:

```shell
$ git add -A
$ git commit -m 'submit'
$ git push
```
