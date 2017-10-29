SELECT FirstName, LastName, CustomerId, Country FROM Customer where Country != 'USA'
SELECT FirstName, LastName, CustomerId, Country FROM Customer where Country = 'Brazil'
SELECT FirstName, LastName, InvoiceId, Invoice.InvoiceDate, Country FROM Customer  JOIN Invoice on Customer.CustomerId = Invoice.CustomerId where Customer.Country = 'Brazil'
select * from employee where title = 'Sales Support Agent'
select distinct BillingCountry from Invoice
select Employee.FirstName, Employee.LastName, Invoice.InvoiceId, Invoice.Total from Employee join Customer on Customer.SupportRepId = Employee.EmployeeId  join Invoice on Customer.CustomerId = Invoice.CustomerId
select Invoice.Total, Customer.FirstName, Customer.LastName, Customer.Country, Employee.FirstName, Employee.LastName from Invoice join Customer on Invoice.CustomerId = Customer.CustomerId join Employee on  Customer.SupportRepId = Employee.EmployeeId
select count (InvoiceDate) from Invoice where Invoice.InvoiceDate between '2009-01-01' and '2011-12-31'
select sum(case when InvoiceDate like '2009%' then Total end ) as '2009', sum(case when InvoiceDate like '2010%' then Total  end ) as '2010', sum(case when InvoiceDate like '2011%' then Total  end) as '2011' from Invoice
select count (InvoiceId) from InvoiceLine where InvoiceId = 37
select count (InvoiceId) from InvoiceLine group by InvoiceId
select Name from Track join InvoiceLine where InvoiceLine.TrackId = Track.TrackId
select Artist.Name, Track.Name from InvoiceLine join Track, Album, Artist where InvoiceLine.TrackId = Track.TrackId and Track.AlbumId = Album.AlbumId and Album.ArtistId = Artist. ArtistId
select BillingCountry, count (InvoiceId) from Invoice group by Invoice.BillingCountry
select Name, count (PlaylistTrack.PlaylistId) from Playlist join PlaylistTrack where Playlist.PlaylistId = PlaylistTrack.PlaylistId group by Playlist.Name
select Track.Name as Track_Name, MediaType.Name as Type, Genre.Name as Genre, Album.Title as Album_Title from Track  join Genre, Album, MediaType where Track.MediaTypeId = MediaType.MediaTypeId and Track.GenreId = Genre.GenreId and Track.AlbumId = Album.AlbumId
select Invoice.*,  count(Invoice.InvoiceId) as 'Invoice Items' from Invoice join InvoiceLine where Invoice.InvoiceId = InvoiceLine.InvoiceId group by Invoice.InvoiceId
select Employee.FirstName, round(sum(Invoice.Total), 2) as 'Total Sales' from Employee join Customer, Invoice where Customer.SupportRepId = Employee.EmployeeId  and Employee.Title = 'Sales Support Agent' and Customer.CustomerId = Invoice.CustomerId and Customer.SupportRepId = Employee.EmployeeId group by Employee.FirstName
select Employee.FirstName, round(sum(Invoice.Total), 2) as 'Total Sales' from Employee join Customer, Invoice where Customer.SupportRepId = Employee.EmployeeId  and Employee.Title = 'Sales Support Agent' and Customer.CustomerId = Invoice.CustomerId and Customer.SupportRepId = Employee.EmployeeId and Invoice.InvoiceDate like '2009%' group by Employee.FirstName order by (round(sum(Invoice.Total), 2))  desc limit 1
select Employee.FirstName, round(sum(Invoice.Total), 2) as 'Total Sales' from Employee join Customer, Invoice where Customer.SupportRepId = Employee.EmployeeId  and Employee.Title = 'Sales Support Agent' and Customer.CustomerId = Invoice.CustomerId and Customer.SupportRepId = Employee.EmployeeId  group by Employee.FirstName order by 'Total Sales'  desc limit 1
select Employee.FirstName, count (CustomerId) from Customer join Employee where Employee.EmployeeId = Customer.SupportRepId group by Employee.FirstName
select Customer.Country, round(sum(Invoice.Total), 2) as 'Total Sales' from Invoice join Customer where Customer.Country = Invoice.BillingCountry group by Customer.Country
select Customer.Country, round(sum(Invoice.Total), 2) as 'Total Sales' from Invoice join Customer where Customer.Country = Invoice.BillingCountry group by Customer.Country order by round(sum(Invoice.Total), 2) desc limit 1