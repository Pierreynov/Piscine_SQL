SELECT Country, COUNT(*) AS Total
    FROM (
        SELECT employees.Country
        FROM employees
        UNION ALL
        SELECT customers.Country
        FROM customers
        UNION ALL 
        SELECT invoices.BillingCountry
        FROM invoices
    )
    GROUP BY Country

