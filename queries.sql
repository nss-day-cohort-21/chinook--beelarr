SELECT FirstName, LastName, CustomerId, Country FROM Customer where Country != 'USA'
SELECT FirstName, LastName, CustomerId, Country FROM Customer where Country = 'Brazil'
SELECT FirstName, LastName, InvoiceId, Invoice.InvoiceDate, Country FROM Customer  JOIN Invoice on Customer.CustomerId = Invoice.CustomerId where Customer.Country = 'Brazil'
select * from employee where title = 'Sales Support Agent'
