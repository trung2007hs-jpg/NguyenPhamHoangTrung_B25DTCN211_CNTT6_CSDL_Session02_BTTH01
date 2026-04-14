CREATE DATABASE IF NOT EXISTS bth1;
USE bth1;

CREATE TABLE Persons (
    personId INT NOT NULL PRIMARY KEY,
    lastName VARCHAR(255) NOT NULL,
    firstName VARCHAR(255) NOT NULL,
    email VARCHAR(100) UNIQUE,
    address VARCHAR(255),
    city VARCHAR(255)
);

CREATE TABLE hobbies (
    id INT PRIMARY KEY,
    name VARCHAR(100) CHECK (LENGTH(name) > 4),
    personId INT,
    FOREIGN KEY (personId) REFERENCES Persons(personId)
);