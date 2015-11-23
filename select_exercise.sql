USE codeup_test_db;
-- ? mj not showing up?
SELECT name AS 'The Name of MJ''s Album is:'
FROM albums 
WHERE name = 'Thriller'; 

SELECT release_date AS 'The Year Grease was released was:'
FROM albums 
WHERE name = 'Grease: The Original Soundtrack from the Motion Picture'; 

SELECT genre AS 'The Genre of Queen''s Album is:'  
FROM albums 
WHERE artist = 'Queen';

SELECT sales AS 'Legend sold:'
FROM albums 
WHERE artist = 'Bob Marley & the Wailers';

SELECT artist AS 'Albums in the Rock Genre are:'
FROM albums 
WHERE genre LIKE '%rock%';

SELECT name AS 'These are 80''s albums:'
FROM albums 
WHERE release_date BETWEEN '1980' AND '1989';







