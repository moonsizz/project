INSERT INTO person_order (person_id, menu_id, order_date)
SELECT
    p.id,
    (SELECT id FROM menu WHERE pizza_name = 'greek pizza'),
    '2022-02-25'
FROM person p;
