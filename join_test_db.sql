USE join_test_db; 

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('author');
INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 1),
('sally', 'sally@example.com', 1),
('mike', 'mike@example.com', null);

SELECT *
FROM users AS u
LEFT JOIN roles AS r ON r.id = u.role_id
;

SELECT r.name, COUNT(*) AS number_of_users_in_db
FROM users AS u
RIGHT JOIN roles AS r ON r.id = u.role_id
GROUP BY r.name
;
