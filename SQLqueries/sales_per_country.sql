SELECT SUM(i.Total) SalesTotal, i.BillingCountry
FROM Invoice i
GROUP BY i.BillingCountry
