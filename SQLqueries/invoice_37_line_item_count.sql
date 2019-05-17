SELECT COUNT(il.InvoiceLineId) NumLineItems, il.InvoiceId
FROM InvoiceLine il
WHERE il.InvoiceId = 37
GROUP BY il.InvoiceId
