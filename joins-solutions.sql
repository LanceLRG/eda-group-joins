--Get all customers and their addresses.
SELECT *
FROM "customers"
JOIN "addresses" ON "addresses"."customer_id"="customers"."id";

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
WHERE "product_id"=6;

--Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
-- Lucy, 3
-- Lisa, 5
-- Charles, 1
SELECT "customers"."first_name", count(orders)
FROM "orders"
JOIN "addresses" ON "orders"."address_id"= "addresses"."id"
JOIN "customers" ON "addresses"."customer_id"= "customers"."id"
GROUP BY "customers"."first_name"

--How many customers do we have?
-- 4
SELECT count(*)
FROM "customers";


--How many products do we carry?
-- 7
SELECT count(*)
FROM "products"

--What is the total available on-hand quantity of diet pepsi?
--92
SELECT SUM(on_hand)
FROM "warehouse_product"
JOIN "products" ON "warehouse_product"."product_id"="products"."id"
WHERE "product_id"=6;

--Stretch--

--How much was the total cost for each order?


--How much has each customer spent in total?


--How much has each customer spent in total? Customers who have spent $0 should still show up in the table. It should say 0, not NULL (research coalesce).

