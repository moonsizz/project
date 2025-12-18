SELECT po.order_date AS action_date, p.name AS person_name
FROM person_order po
JOIN person p ON p.id = po.person_id
WHERE (po.order_date, po.person_id) IN (
    SELECT visit_date, person_id
    FROM person_visits
)
ORDER BY action_date ASC, person_name DESC;
