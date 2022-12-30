SELECT 
	order_id,
    order_date,
    'Active' as status
FROM sql_store.orders
WHERe order_date >= '2019-01-01'
union
SELECT 
	order_id,
    order_date,
    'Archived' as status
FROM sql_store.orders
WHERe order_date < '2019-01-01';