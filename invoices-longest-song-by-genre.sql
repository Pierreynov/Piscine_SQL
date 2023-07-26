SELECT invoices.InvoiceId
FROM invoices
JOIN invoice_items ON invoices.InvoiceId = invoice_items.InvoiceId
WHERE TrackId IN (
  SELECT TrackId
  FROM tracks
  GROUP BY GenreId
  HAVING Milliseconds = MAX(Milliseconds)
  )
GROUP BY  invoices.InvoiceId