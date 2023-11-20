/*
q6.sql: Show for each kind of animal how many got adopted, ordered from most adopted to
least. (how many dogs were adopted, how many cats were adopted etc)
*/




SELECT kind,COUNT(*) AS Count_Per_Kind_Adoption
from pet P
JOIN adoption A
ON P.id = A.pet_id
GROUP BY kind 
ORDER BY Count_Per_Kind_Adoption DESC
;

