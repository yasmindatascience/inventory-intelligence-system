SELECT 
    product_id,
    stock_quantity,
    min_stock,
    CASE 
        WHEN stock_quantity <= min_stock THEN 'HIGH RISK'
        WHEN stock_quantity <= min_stock * 1.5 THEN 'MEDIUM RISK'
        ELSE 'LOW RISK'
    END AS risk_level
FROM inventory;
