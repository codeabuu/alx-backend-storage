-- creating sql table users
-- attr id, email,name, country
CREATE TABLE IF NOT EXISTS users (
	id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
	email varchar(255) NOT NULL UNIQUE,
	name varchar(255)
	)
