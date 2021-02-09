--Get all customers and their addresses.
SELECT *
FROM "customers"
JOIN "addresses" ON "addresses"."id"="customers"."id";

--Get all orders and their line items (orders, quantity and product).
SELECT orders.id, "quantity", "description"
FROM "orders"
JOIN "line_items" ON "line_items"."order_id"="orders"."id"
JOIN "products" ON "products"."id"="line_items"."product_id";

--Which warehouses have cheetos?
--just delta
SELECT warehouse, description
FROM "warehouse"
JOIN "warehouse_product" ON "warehouse_product"."warehouse_id"="warehouse"."id"
JOIN "products" ON "warehouse_product"."product_id"="products"."id"
WHERE "product_id"=5;

--Which warehouses have diet pepsi?
--alpha, delta, and gamma
SELECT warehouse, description
FROM "warehouse"
JOIN "warehouse_product" ON "warehouse_product"."warehouse_id"="warehouse"."id"
JOIN "products" ON "warehouse_product"."product_id"="products"."id"
WHERE "product_id"=6

--Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.


--How many customers do we have?


--How many products do we carry?


--What is the total available on-hand quantity of diet pepsi?


--Stretch--

--How much was the total cost for each order?


--How much has each customer spent in total?


--How much has each customer spent in total? Customers who have spent $0 should still show up in the table. It should say 0, not NULL (research coalesce).

