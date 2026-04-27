-- estoque atual
SELECT * FROM inventory;

-- produtos em risco
SELECT product_id, stock_quantity, min_stock
FROM inventory
WHERE stock_quantity <= min_stock;
