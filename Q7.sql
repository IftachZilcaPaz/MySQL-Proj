-- q7.sql: Show unadopted dogs from oldest to youngest


	SELECT p.id, p.kind, p.color, p.birth_date
    FROM
		pet as p
        LEFT JOIN adoption AS a
			ON p.id = a.pet_id
	WHERE
		p.kind = 'dog'
        and a.pet_id IS NULL
        ORDER BY birth_date
        
        

