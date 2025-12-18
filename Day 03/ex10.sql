INSERT INTO person_order (person_id, menu_id, order_date)
SELECT
    p.id,
    m.id,
    '2022-02-24'
FROM person p
JOIN menu m ON m.pizza_name = 'sicilian pizza'
WHERE p.name IN ('Denis', 'Irina');
