USE codeup_test_db;
SELECT 'Thriller' AS 'The Name of MJ''s Album is:';
SELECT * FROM albums WHERE artist = 'Michael Jackson'; 

SELECT '1978' AS 'The Year Grease was released was:';
SELECT * FROM albums WHERE release_date = '1978'; 

SELECT 'The Best Ever(rock)' AS 'The Genre of Queen''s Album is:'  ;
SELECT * FROM albums WHERE genre = 'The Best Ever(rock)';

SELECT '34 million' AS 'Legend sold:';
SELECT * FROM albums WHERE sales = '34';

SELECT 'Rock Genre' AS 'Albums in the:';
SELECT * FROM albums WHERE genre = 'Rock';

SELECT '80''s Albums' AS 'These are 80''s:';
SELECT * FROM albums WHERE release_date BETWEEN '1980' AND '1989';






