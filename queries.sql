SELECT FirstName, LastName, CustomerId, Country FROM Customer where Country != 'USA'
SELECT FirstName, LastName, CustomerId, Country FROM Customer where Country = 'Brazil'
SELECT FirstName, LastName, InvoiceId, Invoice.InvoiceDate, Country FROM Customer  JOIN Invoice on Customer.CustomerId = Invoice.CustomerId where Customer.Country = 'Brazil'
select * from employee where title = 'Sales Support Agent'
select distinct BillingCountry from Invoice
select Employee.FirstName, Employee.LastName, Invoice.InvoiceId, Invoice.Total from Employee join Customer on Customer.SupportRepId = Employee.EmployeeId  join Invoice on Customer.CustomerId = Invoice.CustomerId
select Invoice.Total, Customer.FirstName, Customer.LastName, Customer.Country, Employee.FirstName, Employee.LastName from Invoice join Customer on Invoice.CustomerId = Customer.CustomerId join Employee on  Customer.SupportRepId = Employee.EmployeeId