-- venda reduz estoque
UPDATE inventory
SET stock_quantity = stock_quantity - 5
WHERE product_id = 1;

-- registrar pedido
INSERT INTO orders (product_id, quantity, order_date)
VALUES (1, 5, CURRENT_DATE);
