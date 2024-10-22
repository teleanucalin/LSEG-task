-- Create the database
CREATE DATABASE db;

-- Select the database to use
USE db;

-- Create the contacts table
CREATE TABLE contacts (
    name VARCHAR(100),
    address VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(100)
);

-- Insert records into the contacts table
INSERT INTO contacts (name, address, email, phone) 
VALUES ('Calin', 'Toamnei 123', 'calin@gmail.com', '0722 123 123');

INSERT INTO contacts (name, address, email, phone) 
VALUES ('Andrei', 'Mare 23', 'andrei@gmail.com', '0722 321 123');

INSERT INTO contacts (name, address, email, phone) 
VALUES ('Carla', 'De Mijloc 14', 'carla@gmail.com', '0722 111 111');

INSERT INTO contacts (name, address, email, phone) 
VALUES ('Daria', 'Frasinului 3', 'daria@gmail.com', '0722 222 222');
