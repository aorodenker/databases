DROP DATABASE IF EXISTS chat;
CREATE DATABASE chat;

USE chat;

CREATE TABLE users (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  username varchar(255)
);

CREATE TABLE messages (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  text varchar(255),
  roomname varchar(255),
  user_id int,
  FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO users (username) VALUES ('hunter');
INSERT INTO users (username) VALUES ('andrew');

INSERT INTO messages (text, roomname, user_id) VALUES ('Hello World!', 'lobby', 1);
INSERT INTO messages (text, roomname, user_id) VALUES ('Whats Up', 'lobby', 2);
INSERT INTO messages (text, roomname, user_id) VALUES ('Nothin!', 'random', 1);
INSERT INTO messages (text, roomname) VALUES ('Hello World!', 'myhouse');


DELETE FROM messages WHERE id = 1;

/* Create other tables and define schemas for them here */


/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

