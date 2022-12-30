SELECT 
	customer_id,
    first_name,
    points,
    'bronze' AS type
FROM sql_store.customers
WHERE points < 2000
UNION
SELECT 
	customer_id,
    first_name,
    points,
    'silver' AS type
FROM sql_store.customers
WHERE points BETWEEN 2000 AND 3000
UNION
SELECT 
	customer_id,
    first_name,
    points,
    'gold' AS type
FROM sql_store.customers
WHERE points > 3000
order by first_name;