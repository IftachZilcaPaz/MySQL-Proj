

-- Count the number of unadopted pets Q2


SELECT COUNT(*) AS num_unadopted_pets
FROM pet
WHERE id NOT IN (SELECT pet_id FROM adoption);



