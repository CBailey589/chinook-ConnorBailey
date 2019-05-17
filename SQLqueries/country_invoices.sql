SELECT COUNT(i.InvoiceId) NumInvoices, i.BillingCountry Country
FROM Invoice i
GROUP BY i.BillingCountry;
