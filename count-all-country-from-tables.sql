SELECT *, COUNT(test.Country) AS 'Total',
IFNULL((SELECT COUNT(employees.Country) FROM employees WHERE employees.Country = test.Country), 0) AS 'Employees',
IFNULL((SELECT COUNT(customers.Country) FROM customers WHERE customers.Country = test.Country), 0) AS 'Customers',
IFNULL((SELECT COUNT(invoices.BillingCountry) FROM invoices WHERE invoices.BillingCountry = test.Country), 0) AS 'Invoices'
FROM (SELECT Country
    FROM (
        SELECT employees.Country
        FROM employees
        UNION ALL
        SELECT customers.Country
        FROM customers
        UNION ALL 
        SELECT invoices.BillingCountry
        FROM invoices
    )) test
GROUP BY Country