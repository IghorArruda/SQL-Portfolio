-- ============================================
-- ARQUIVO 1: Verificação de dados nulos
-- ============================================

-- Verificar valores nulos na tabela de vendas
SELECT 
    COUNT(*) AS TotalLinhas,
    SUM(CASE WHEN SalesAmount IS NULL THEN 1 ELSE 0 END) AS Nulos_SalesAmount,
    SUM(CASE WHEN CustomerKey IS NULL THEN 1 ELSE 0 END) AS Nulos_CustomerKey
FROM FactInternetSales;

-- Verificar valores nulos na tabela de produtos
SELECT 
    COUNT(*) AS TotalLinhas,
    SUM(CASE WHEN EnglishProductName IS NULL THEN 1 ELSE 0 END) AS Nulos_ProductName
FROM DimProduct;
