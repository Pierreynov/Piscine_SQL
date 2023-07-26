SELECT  employees.LastName || ' ' || employees.FirstName AS '3rd best seller'
FROM employees
JOIN customers ON employees.EmployeeId = customers.SupportRepId
GROUP BY employees.EmployeeId ORDER BY COUNT(*) LIMIT 1
