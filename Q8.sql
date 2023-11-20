/*
q8.sql: for each female who adopted cats, show how many cats they adopted, ordered from
most cats to least.
*/


WITH
X AS (
SELECT O.fname,O.lname,O.gender,P.kind
FROM adoption A
Join pet P
ON A.pet_id = P.id
Join owner O
ON O.id = A.owner_id 
WHERE gender = 'F' AND kind = 'cat'
)
SELECT fname AS Owner, lname AS LnOwner, gender, kind AS Pet_Kind,COUNT(kind) AS cats_per_owner
FROM X
GROUP BY fname, lname
;

