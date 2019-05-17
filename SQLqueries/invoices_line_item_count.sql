SELECT COUNT(il.InvoiceLineId) NumInvoiceLineItems, i.*
FROM InvoiceLine il
INNER JOIN Invoice i
ON il.InvoiceId = i.InvoiceId
GROUP By i.InvoiceId, i.CustomerId, i.InvoiceDate, i.BillingAddress, i.BillingCity,
i.BillingState, i.BillingCountry, i.BillingPostalCode, i.Total
