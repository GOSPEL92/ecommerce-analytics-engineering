Data Quality Rules

Rule 1

Quantity must be convertible to an integer.

Rule 2

UnitPrice must be convertible to a decimal.

Rule 3

InvoiceDate must be convertible to a valid datetime.

Rule 4

Invoices beginning with "C" indicate customer return transactions.

Rule 5

Negative quantities associated with inventory operations are valid business events and must not be deleted.

Rule 6

Malformed records must be quarantined rather than removed permanently.
