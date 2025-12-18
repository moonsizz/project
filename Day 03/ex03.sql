(
    SELECT pz.name
    FROM person_visits v
    JOIN person p ON p.id = v.person_id
    JOIN pizzeria pz ON pz.id = v.pizzeria_id
    WHERE p.gender = 'female'
)
EXCEPT ALL
(
    SELECT pz.name
    FROM person_visits v
    JOIN person p ON p.id = v.person_id
    JOIN pizzeria pz ON pz.id = v.pizzeria_id
    WHERE p.gender = 'male'
)

UNION ALL

(
    SELECT pz.name
    FROM person_visits v
    JOIN person p ON p.id = v.person_id
    JOIN pizzeria pz ON pz.id = v.pizzeria_id
    WHERE p.gender = 'male'
)
EXCEPT ALL
(
    SELECT pz.name
    FROM person_visits v
    JOIN person p ON p.id = v.person_id
    JOIN pizzeria pz ON pz.id = v.pizzeria_id
    WHERE p.gender = 'female'
)
ORDER BY name;
