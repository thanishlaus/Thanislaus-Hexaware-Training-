-- READ
SELECT * FROM products;

-- UPDATE
UPDATE products
SET reorder_level = 12
WHERE product_id = 101;

-- DELETE
DELETE FROM suppliers
WHERE supplier_id = 202;