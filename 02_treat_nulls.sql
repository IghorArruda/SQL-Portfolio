-- ============================================
-- ARQUIVO 2: Tratamento de dados nulos
-- ============================================

-- Substituir valores nulos por 0
UPDATE FactInternetSales 
SET SalesAmount = 0 
WHERE SalesAmount IS NULL;

UPDATE FactInternetSales 
SET TaxAmt = 0 
WHERE TaxAmt IS NULL;

-- Remover linhas onde CustomerKey é nulo
DELETE FROM FactInternetSales 
WHERE CustomerKey IS NULL;

-- Verificar se resolveu
SELECT 
    SUM(CASE WHEN SalesAmount IS NULL THEN 1 ELSE 0 END) AS AindaExistemNulos
FROM FactInternetSales;
