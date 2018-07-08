CREATE DATABASE chat;

USE chat;

CREATE TABLE users (
  userID int AUTO_INCREMENT,
  userName varchar(20),
  PRIMARY KEY (userID)
);

CREATE TABLE messages (
  /* Describe your table here.*/
  messageID int AUTO_INCREMENT,
  message text,
  userID int,
  PRIMARY KEY (messageID),
  FOREIGN KEY (userID) REFERENCES users(userID)
);

CREATE TABLE rooms (
  roomID int AUTO_INCREMENT,
  roomName varchar(20),
  PRIMARY KEY (roomID)
);

CREATE TABLE user_room (
  userID int,
  roomID int,
  FOREIGN KEY (userID) REFERENCES users(userID),
  FOREIGN KEY (roomID) REFERENCES rooms(roomID)
);

CREATE TABLE friends (
  user1ID int,
  user2ID int,
  FOREIGN KEY (user1ID) REFERENCES users(userID),
  FOREIGN KEY (user2ID) REFERENCES users(userID)
);

/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

