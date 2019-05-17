SELECT TOP 1 SUM(i.Total) SalesTotal, i.BillingCountry
FROM Invoice i
GROUP BY i.BillingCountry
ORDER BY SalesTotal DESC;
