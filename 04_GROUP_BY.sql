-- ============================================
-- ARQUIVO 4: GROUP BY (agregações)
-- ============================================

-- Total de vendas por categoria de produto
SELECT 
    pc.EnglishProductCategoryName,
    SUM(s.SalesAmount) AS TotalVendas,
    COUNT(*) AS QuantidadeVendida,
    AVG(s.SalesAmount) AS TicketMedio
FROM FactInternetSales s
INNER JOIN DimProduct p ON s.ProductKey = p.ProductKey
INNER JOIN DimProductSubcategory ps ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
INNER JOIN DimProductCategory pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
GROUP BY pc.EnglishProductCategoryName
ORDER BY TotalVendas DESC;
