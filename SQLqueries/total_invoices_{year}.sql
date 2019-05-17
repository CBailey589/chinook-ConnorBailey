SELECT YEAR(i.InvoiceDate) [Year], COUNT(i.InvoiceId) NumInvoicesInYear
FROM Invoice i
WHERE (i.InvoiceDate 
BETWEEN '2011-01-01 00:00:00.000' 
AND '2011-12-21 23:59:59.999')
OR (i.InvoiceDate 
BETWEEN '2009-01-01 00:00:00.000' 
AND '2009-12-21 23:59:59.999')
GROUP BY YEAR(i.InvoiceDate)