SELECT
    COALESCE(p.name, '-') AS person_name,
    v.visit_date AS visit_date,
    COALESCE(z.name, '-') AS pizzeria_name
FROM person p
FULL JOIN person_visits v
       ON p.id = v.person_id
FULL JOIN pizzeria z
       ON z.id = v.pizzeria_id
WHERE v.visit_date BETWEEN '2022-01-01' AND '2022-01-03'
   OR v.visit_date IS NULL
ORDER BY person_name, visit_date, pizzeria_name;
