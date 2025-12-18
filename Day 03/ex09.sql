INSERT INTO person_visits (person_id, pizzeria_id, visit_date)
SELECT p.id, z.id, '2022-02-24'
FROM person p
JOIN pizzeria z ON z.name = 'Dominos'
WHERE p.name IN ('Denis', 'Irina');
