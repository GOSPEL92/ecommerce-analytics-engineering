-- Row Count
SELECT COUNT(*) AS TotalRows
FROM dbo.e_commence_data;

-- Total Customers
SELECT COUNT(DISTINCT CustomerID) AS TotalCustomers
FROM dbo.e_commence_data;

-- Total Products
SELECT COUNT(DISTINCT StockCode) AS TotalProducts
FROM dbo.e_commence_data;

-- Total Invoices
SELECT COUNT(DISTINCT InvoiceNo) AS TotalInvoices
FROM dbo.e_commence_data;