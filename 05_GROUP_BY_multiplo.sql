-- ============================================
-- ARQUIVO 5: GROUP BY com múltiplas dimensões
-- ============================================

-- Vendas por ano, mês e território
SELECT 
    YEAR(s.OrderDate) AS Ano,
    MONTH(s.OrderDate) AS Mes,
    t.SalesTerritoryCountry,
    SUM(s.SalesAmount) AS TotalVendas,
    COUNT(DISTINCT s.CustomerKey) AS ClientesAtendidos
FROM FactInternetSales s
INNER JOIN DimSalesTerritory t ON s.SalesTerritoryKey = t.SalesTerritoryKey
GROUP BY YEAR(s.OrderDate), MONTH(s.OrderDate), t.SalesTerritoryCountry
ORDER BY Ano DESC, Mes DESC, TotalVendas DESC;
