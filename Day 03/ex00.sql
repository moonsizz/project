SELECT
    m.pizza_name,
    m.price,
    pz.name AS pizzeria_name,
    v.visit_date
FROM person p
JOIN person_visits v ON v.person_id = p.id
JOIN pizzeria pz ON pz.id = v.pizzeria_id
JOIN menu m ON m.pizzeria_id = pz.id
WHERE p.name = 'Kate'
  AND m.price BETWEEN 800 AND 1000
ORDER BY m.pizza_name, m.price, pizzeria_name;
