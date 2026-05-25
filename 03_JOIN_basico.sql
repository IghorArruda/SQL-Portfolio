-- ============================================
-- ARQUIVO 3: JOIN entre tabelas
-- ============================================

-- Relacionar vendas com produtos e clientes
SELECT 
    s.SalesOrderNumber,
    p.EnglishProductName,
    s.SalesAmount,
    s.OrderDate
FROM FactInternetSales s
INNER JOIN DimProduct p ON s.ProductKey = p.ProductKey
WHERE s.SalesAmount > 500
ORDER BY s.SalesAmount DESC;
