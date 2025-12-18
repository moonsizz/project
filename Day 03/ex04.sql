(
    SELECT DISTINCT pz.name
    FROM person_order o
    JOIN person p ON p.id = o.person_id
    JOIN menu m ON m.id = o.menu_id
    JOIN pizzeria pz ON pz.id = m.pizzeria_id
    WHERE p.gender = 'female'
    EXCEPT
    SELECT DISTINCT pz.name
    FROM person_order o
    JOIN person p ON p.id = o.person_id
    JOIN menu m ON m.id = o.menu_id
    JOIN pizzeria pz ON pz.id = m.pizzeria_id
    WHERE p.gender = 'male'
)
UNION
(
    SELECT DISTINCT pz.name
    FROM person_order o
    JOIN person p ON p.id = o.person_id
    JOIN menu m ON m.id = o.menu_id
    JOIN pizzeria pz ON pz.id = m.pizzeria_id
    WHERE p.gender = 'male'
    EXCEPT
    SELECT DISTINCT pz.name
    FROM person_order o
    JOIN person p ON p.id = o.person_id
    JOIN menu m ON m.id = o.menu_id
    JOIN pizzeria pz ON pz.id = m.pizzeria_id
    WHERE p.gender = 'female'
)
ORDER BY name;
