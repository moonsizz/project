SELECT DISTINCT p.name
FROM person p
JOIN person_order po1 ON po1.person_id = p.id
JOIN menu m1 ON m1.id = po1.menu_id
JOIN person_order po2 ON po2.person_id = p.id
JOIN menu m2 ON m2.id = po2.menu_id
WHERE p.gender = 'female'
  AND m1.pizza_name = 'cheese pizza'
  AND m2.pizza_name = 'pepperoni pizza'
ORDER BY p.name;
