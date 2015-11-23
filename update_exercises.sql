USE codeup_test_db;

SELECT name AS 'All albums in the table'
FROM albums;

UPDATE albums
SET sales = (sales * 10);
SELECT sales AS 'New Updated Sales'
FROM albums;

SELECT name AS 'All albums released before 1980'
FROM albums
WHERE release_date < '1980';

UPDATE albums
SET release_date = (release_date - 100)
WHERE release_date < '1980';

SELECT release_date AS "Now it's way older music!" 
FROM albums
WHERE release_date < '1980';

SELECT name AS 'Album''s by Michael Jackson'
FROM albums
Where artist = 'Michael Jackson';

UPDATE albums
SET artist = 'The King of Pop'
WHERE artist = 'Michael Jackson';

SELECT artist as 'NEW MJ name' 
FROM albums
WHERE name = 'Thriller';


