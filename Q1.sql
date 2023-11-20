# q1.sql: ​Make a query to create the following tables:
#
#
# pet​ - represents an animal in the shelter or that was adopted from the shelter
# ● primary key: id
# ● other columns: kind ("dog"/"cat"/"bird"/etc), color, birth_date, arrival_date
#
#
# owner​ - represents people that adopt animals from the shelter
# ● primary key: id
# ● other columns: fname lname gender
#
#
# adoption​ - represents what owner adopted what animal (the relations is one to many)
# ● Primary Key is the combination of both ​owner_id​ and ​pet_id
# ● owner_id​ references ​id ​from the ​owner​ table.
# ● pet_id​ references ​id ​from the ​pet​ table. must be unique.
# ● other columns: ​adoption_date
#
#
#IMPORTANT: see and execute ​insert_shelter_data.sql​ to add values to the table.



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

