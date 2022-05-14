CREATE DATABASE intsales;

USE intsales;

CREATE TABLE intsales_details(
sale_id INT NOT NULL,
dateofsale DATE NOT NULL, 
landingpage VARCHAR (20), 
personname VARCHAR (20) NOT NULL,
salenumber DECIMAL (8,2) NOT NULL, 
PRIMARY KEY (sale_id),
UNIQUE (salenumber)
);

EXPLAIN intsales_details;

INSERT INTO intsales_details (sale_id, dateofsale, landingpage, personname, salenumber)
VALUES ('1', '1988-11-10', 'website', 'Andrew', '3340'),
('2', '2022-03-03', 'website', 'Saad', '2450'),
('3', '2022-01-14', 'facebook', 'Jameela', '2090'),
('4', '1995-01-03', 'instagram', 'John', '2192'),
('5', '2000-05-23', 'facebook', 'Richard', '3275');

