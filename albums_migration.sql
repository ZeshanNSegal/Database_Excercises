USE codeup_test_db;
DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist VARCHAR(140) NOT NULL,
  name VARCHAR(140) NOT NULL,
  release_date INT(4) NOT NULL,
  sales FLOAT NULL,
  genre VARCHAR(140) NULL,
  PRIMARY KEY (id)
); 
     	

