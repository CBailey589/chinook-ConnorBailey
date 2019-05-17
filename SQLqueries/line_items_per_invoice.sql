SELECT COUNT(il.InvoiceLineId) NumLineItems, il.InvoiceId
FROM InvoiceLine il
GROUP BY il.InvoiceId
