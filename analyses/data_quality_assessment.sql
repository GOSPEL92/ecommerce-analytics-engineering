-- Malformed Records

SELECT *
FROM dbo.e_commence_data
WHERE TRY_CAST(Quantity AS INT) IS NULL
   OR TRY_CAST(UnitPrice AS DECIMAL(10,2)) IS NULL
   OR TRY_CAST(InvoiceDate AS DATETIME) IS NULL;

-- Malformed Record Count

SELECT COUNT(*) AS MalformedRows
FROM dbo.e_commence_data
WHERE TRY_CAST(Quantity AS INT) IS NULL
   OR TRY_CAST(UnitPrice AS DECIMAL(10,2)) IS NULL
   OR TRY_CAST(InvoiceDate AS DATETIME) IS NULL;