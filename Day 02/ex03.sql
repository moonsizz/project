WITH days AS (
    SELECT g.day
    FROM generate_series('2022-01-01'::date,
                         '2022-01-10'::date,
                         '1 day') AS g(day)
)
SELECT d.day AS missing_date
FROM days d
LEFT JOIN person_visits v1
       ON v1.visit_date = d.day AND v1.person_id = 1
LEFT JOIN person_visits v2
       ON v2.visit_date = d.day AND v2.person_id = 2
WHERE v1.person_id IS NULL
  AND v2.person_id IS NULL
ORDER BY missing_date;
