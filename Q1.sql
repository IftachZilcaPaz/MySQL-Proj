CREATE SCHEMA pet_shelter;

use pet_shelter;

CREATE TABLE pet
(
id INT PRIMARY KEY NOT NULL,
kind VARCHAR (50) NOT NULL,
color VARCHAR (50) NOT NULL,
birth_date DATE NOT NULL,
arrival_date DATE NOT NULL
)
;

CREATE TABLE owner
(
id INT PRIMARY KEY NOT NULL,
fname VARCHAR (50) NOT NULL,
lname VARCHAR (50) NOT NULL,
gender char (1) NOT NULL,

constraint person_check_gender
    CHECK (gender in ('M', 'F'))
)
;


CREATE TABLE adoption
(
owner_id INT NOT NULL,
pet_id INT NOT NULL UNIQUE,
adoption_date DATE NOT NULL,

PRIMARY KEY (owner_id, pet_id),
FOREIGN KEY (owner_id) REFERENCES owner(id),
FOREIGN KEY (pet_id) REFERENCES pet(id)
)
;

