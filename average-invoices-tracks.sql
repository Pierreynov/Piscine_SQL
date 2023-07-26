SELECT ROUND(AVG(tracks.UnitPrice * invoice_items.Quantity),2) AS 'Average Price', 
ROUND(AVG(tracks.UnitPrice) / FLOOR(SUM(tracks.Milliseconds *0.001)),5)|| '€' AS 'Price by second',
FLOOR(SUM(tracks.Milliseconds*0.001)) AS 'Track Total Time' ,
invoices.InvoiceId
FROM tracks 
JOIN invoice_items ON tracks.TrackId = invoice_items.TrackId 
JOIN invoices ON invoice_items.InvoiceId = invoices.InvoiceId 
GROUP BY invoices.InvoiceId