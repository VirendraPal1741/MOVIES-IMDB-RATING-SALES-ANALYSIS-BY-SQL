USE moviesdb;
SELECT title,industry FROM moviesdb.movies;

SELECT * FROM movies WHERE industry="bollywood";

SELECT count(*) FROM movies WHERE industry="bollywood";

SELECT count(*) FROM movies WHERE industry="hollywood";

SELECT distinct industry from movies;

SELECT * FROM movies WHERE title LIKE "%thor%";

SELECT * FROM movies WHERE studio="";

SELECT * FROM movies WHERE imdb_rating>9;

SELECT * FROM movies WHERE imdb_rating>=6 AND imdb_rating<=8;

SELECT * FROM movies WHERE release_year=2022;

SELECT * FROM movies WHERE release_year=2022 or release_year=2019 or release_year=2018;

SELECT * FROM movies WHERE release_year IN (2022,2019,2018);

SELECT * FROM movies WHERE studio IN ("Marvel studios","Zee Studios");

SELECT * FROM movies WHERE imdb_rating is null;

SELECT * FROM movies WHERE imdb_rating is  NOT null;

SELECT * FROM movies WHERE industry="bollywood"
order by imdb_rating Asc;

SELECT * FROM movies WHERE industry="bollywood"
order by imdb_rating DESC LIMIT 5;

SELECT * FROM movies WHERE industry="hollywood"
order by imdb_rating DESC LIMIT 5 OFFSET 1;

SELECT MAX(imdb_rating) FROM movies WHERE industry="hollywood";

SELECT AVG(imdb_rating) FROM movies WHERE industry="hollywood";

SELECT MIN(imdb_rating) as min_rating,
MAX(imdb_rating) as max_rating,
 ROUND(AVG(imdb_rating),2) AS avg_rating
 FROM movies WHERE Studio="Marvel Studio";
 
 SELECT COUNT(*) FROM movies WHERE industry="hollywood";
 
 SELECT
         industry, COUNT(*) 
         FROM movies 
         group by industry;

 SELECT
         studio, COUNT(*) 
         FROM movies 
         group by studio;

SELECT
         studio, COUNT(*) as cnt 
         FROM movies 
         group by studio
         ORDER BY cnt DESC;

SELECT
         industry, COUNT(industry) as cnt,
         ROUND(avg(imdb_rating),1) as avg_rating
         FROM movies 
         group by industry
         ORDER BY cnt DESC;

SELECT
         studio, COUNT(studio) as cnt,
         ROUND(avg(imdb_rating),1) as avg_rating
         FROM movies 
         WHERE studio!=""
         group by studio
         ORDER BY avg_rating DESC;
         
SELECT release_year, count(*)
from movies
group by release_year;
 
 SELECT release_year, count(*) as movies_count
from movies
group by release_year
ORDER BY movies_count desc;
#FROM--> WHERE===> GROUP BY==> HAVING==> ORDER BY
SELECT release_year, count(*) as movies_count
from movies
group by release_year
HAVING movies_count>2
ORDER BY movies_count desc;
SELECT *, YEAR(CURDATE())-birth_year as age FROM actors;

SELECT *,(revenue-budget) as profit FROM moviesdb.financials;

SELECT *,
IF (currency='USD',revenue*77,revenue) as revenue_inr
FROM moviesdb.financials;

SELECT *,
   CASE 
        WHEN unit='thousands' THEN revenue/1000
        WHEN unit="billions" THEN revenue*1000
        ELSE revenue
 END as revenue_mln
 FROM moviesdb.financials;
 
 SELECT 
      movies.movie_id,title,budget,revenue,currency,unit
FROM movies 
JOIN financials 
ON movies.movie_id=financials.movie_id;

SELECT 
      m.movie_id,title,budget,revenue,currency,unit
FROM movies m
LEFT JOIN financials f
ON m.movie_id=f.movie_id;






 
 
 







