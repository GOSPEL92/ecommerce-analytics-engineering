-- Return Analysis

SELECT COUNT(*) AS ReturnRows
FROM dbo.e_commence_data
WHERE TRY_CAST(Quantity AS INT) < 0;

-- C-Prefixed Return Analysis

SELECT COUNT(*) AS NegativeRowsStartingWithC
FROM dbo.e_commence_data
WHERE TRY_CAST(Quantity AS INT) < 0
  AND InvoiceNo LIKE 'C%';

-- Inventory Adjustments

SELECT *
FROM dbo.e_commence_data
WHERE TRY_CAST(Quantity AS INT) < 0
  AND InvoiceNo NOT LIKE 'C%';