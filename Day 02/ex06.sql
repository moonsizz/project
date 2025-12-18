SELECT
    m.pizza_name,
    pz.name AS pizzeria_name
FROM person o
JOIN person_order po ON po.person_id = o.id
JOIN menu m ON m.id = po.menu_id
JOIN pizzeria pz ON pz.id = m.pizzeria_id
WHERE o.name IN ('Denis', 'Anna')
ORDER BY m.pizza_name, pizzeria_name;
