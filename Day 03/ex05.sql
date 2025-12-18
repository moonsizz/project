SELECT DISTINCT pz.name AS pizzeria_name
FROM person_visits v
JOIN person p ON p.id = v.person_id
JOIN pizzeria pz ON pz.id = v.pizzeria_id
WHERE p.name = 'Andrey'
  AND pz.id NOT IN (
        SELECT m.pizzeria_id
        FROM person_order o
        JOIN menu m ON m.id = o.menu_id
        WHERE o.person_id = p.id
  )
ORDER BY pizzeria_name;
