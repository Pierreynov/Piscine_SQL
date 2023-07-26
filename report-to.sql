SELECT x.EmployeeId, x.FirstName || ' ' || x.LastName AS EmployeeName, y.FirstName || ' ' || y.LastName AS ReportsTo 
FROM employees AS x  
LEFT JOIN employees AS y ON y.EmployeeId = x.ReportsTo 
GROUP BY x.EmployeeId 