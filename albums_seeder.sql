USE codeup_test_db;

TRUNCATE albums; 

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Michael Jackson', 'Thriller', '1982', '43.3', 'Pop, rock, dance'),
	   ('Eagles', 'Their Greatest Hits', '1976', '32.2', 'folk rock'),
	   ('Bob Marley & the Wailers', 'Legend: The Best of Bob Marley & the Wailers', '1984', '34', 'Reggae'),
	   ('Queen', 'Greatest Hits', '1981', '30', 'The Best Ever(rock), dance, pop'),
	   ('U2', 'The Joshua Tree', '1987', '30', 'Rock'),
	   ('Various Artists', 'Grease: The Original Soundtrack from the Motion Picture', '1978', '42', 'Soundtrack, dance');