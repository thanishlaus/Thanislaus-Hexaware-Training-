-- INSERT PRODUCTS

INSERT INTO products VALUES
(101,'Laptop','Electronics',10),
(102,'Mouse','Electronics',20),
(103,'Keyboard','Electronics',15);

-- INSERT WAREHOUSES

INSERT INTO warehouses VALUES
(1,'Chennai Warehouse','Chennai'),
(2,'Coimbatore Warehouse','Coimbatore');

-- INSERT SUPPLIERS

INSERT INTO suppliers VALUES
(201,'ABC Suppliers','9876543210'),
(202,'XYZ Traders','8765432109');

-- INSERT STOCK MOVEMENTS

INSERT INTO stock_movements VALUES
(1,101,1,50,'IN','2025-08-01'),
(2,102,1,30,'IN','2025-08-01'),
(3,101,1,-45,'OUT','2025-08-05'),
(4,103,2,25,'IN','2025-08-03');