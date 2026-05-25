-- ============================================
-- ARQUIVO 6: Subquery
-- ============================================

-- Produtos com venda acima da média da categoria
SELECT DISTINCT
    p.EnglishProductName,
    s.SalesAmount
FROM FactInternetSales s
INNER JOIN DimProduct p ON s.ProductKey = p.ProductKey
WHERE s.SalesAmount > (
    SELECT AVG(SalesAmount)
    FROM FactInternetSales
    WHERE ProductKey = s.ProductKey
)
ORDER BY s.SalesAmount DESC;
