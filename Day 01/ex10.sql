SELECT
    p.name AS person_name,
    m.pizza_name AS pizza_name,
    z.name AS pizzeria_name
FROM person p
JOIN person_order o ON o.person_id = p.id
JOIN menu m ON m.id = o.menu_id
JOIN pizzeria z ON z.id = m.pizzeria_id
ORDER BY person_name, pizza_name, pizzeria_name;
