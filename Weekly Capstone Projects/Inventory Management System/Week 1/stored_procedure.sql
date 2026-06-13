DELIMITER //

CREATE PROCEDURE low_stock_products()
BEGIN

SELECT
    p.product_id,
    p.product_name,
    SUM(sm.quantity) AS current_stock,
    p.reorder_level

FROM products p
JOIN stock_movements sm
ON p.product_id = sm.product_id

GROUP BY p.product_id,p.product_name,p.reorder_level

HAVING current_stock < p.reorder_level;

END //

DELIMITER ;