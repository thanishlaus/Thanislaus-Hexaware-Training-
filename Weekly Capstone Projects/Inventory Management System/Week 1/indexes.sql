CREATE INDEX idx_product
ON stock_movements(product_id);

CREATE INDEX idx_warehouse
ON stock_movements(warehouse_id);