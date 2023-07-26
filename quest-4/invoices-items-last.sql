SELECT Name
FROM tracks
INNER JOIN invoice_items ON invoice_items.TrackId = tracks.TrackId
INNER JOIN invoices ON invoices.InvoiceId = invoice_items.InvoiceId
WHERE invoices.InvoiceId IN (
  SELECT MAX(InvoiceId)
  FROM invoices
  )