-- ============================================
-- ARQUIVO 7: Criando VIEW (para usar no Power BI)
-- ============================================

CREATE OR ALTER VIEW vw_VendasCompletas AS
SELECT 
    s.SalesOrderNumber,
    s.OrderDate,
    s.SalesAmount,
    p.EnglishProductName,
    pc.EnglishProductCategoryName,
    t.SalesTerritoryCountry
FROM FactInternetSales s
INNER JOIN DimProduct p ON s.ProductKey = p.ProductKey
INNER JOIN DimProductSubcategory ps ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
INNER JOIN DimProductCategory pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
INNER JOIN DimSalesTerritory t ON s.SalesTerritoryKey = t.SalesTerritoryKey;

-- Testar a view
SELECT TOP 10 * FROM vw_VendasCompletas;
