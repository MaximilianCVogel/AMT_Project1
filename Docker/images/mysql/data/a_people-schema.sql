DROP DATABASE IF EXISTS people;

CREATE DATABASE people;
USE people;

CREATE TABLE Person (
	id INTEGER NOT NULL AUTO_INCREMENT, 
	name CHAR(50) NOT NULL,
	password CHAR(50) NOT NULL,
    	address CHAR(50) NOT NULL,
    	telephone CHAR(50) NOT NULL,
    	email CHAR(50) NOT NULL,
	PRIMARY KEY(id)
);