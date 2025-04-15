-- Active: 1744731683789@@mysql.codeworksacademy.com@3306@modest_alchemist_e4e7_db
CREATE TABLE IF NOT EXISTS accounts(
  id VARCHAR(255) NOT NULL PRIMARY KEY COMMENT 'primary key',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name VARCHAR(255) COMMENT 'User Name',
  email VARCHAR(255) UNIQUE COMMENT 'User Email',
  picture VARCHAR(255) COMMENT 'User Picture'
) default charset utf8mb4 COMMENT '';


CREATE TABLE chores(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description VARCHAR(255),
  isComplete BOOLEAN DEFAULT false
);

INSERT INTO
chores(name, description)
VALUES("Feed the cats", "I need to dish up the raw food for the kitties");

INSERT INTO 
chores(name, description)
VALUES("Leave soon", " I need to leave soon to get Noodles from her mother")

SELECT * FROM chores;
UPDATE chores SET isComplete = TRUE WHERE name = "Leave soon"