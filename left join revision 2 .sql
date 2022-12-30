use sql_store;

SELECT 
	o.order_id,
    o.order_date,
    c.first_name AS customer
FROM orders o
join customers c
	on o.customer_id = c.customer_id
LEFT join  shippers sh
on o.shipper_id = sh.shipper_id;