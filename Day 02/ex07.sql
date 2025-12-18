SELECT DISTINCT pz.name
FROM person_visits v
JOIN person p ON p.id = v.person_id
JOIN menu m ON m.pizzeria_id = v.pizzeria_id
JOIN pizzeria pz ON pz.id = v.pizzeria_id
WHERE p.name = 'Dmitriy'
  AND v.visit_date = '2022-01-08'
  AND m.price < 800;
