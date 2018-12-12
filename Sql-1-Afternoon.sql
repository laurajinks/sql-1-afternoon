-- TABLE - PEOPLE

-- (1)
CREATE TABLE Person (id INTEGER PRIMARY KEY AUTOINCREMENT,
                    Name varchar(50), Age integer, Height integer, City varchar(50),
                    FavoriteColor varchar(50));

-- (2)
INSERT INTO Person (Name, Age, Height, City, FavoriteColor)
VALUES
('Laura', 28, 165, 'Dallas', 'Black'),
('Adam', 40, 186, 'New York', 'Green'),
('Brett', 60, 100, 'Chicago', 'Aquamarine'),
('Charlie', 12, 124, 'Los Angeles', 'Burgundy'),
('Danielle', 32, 160, 'Seattle', '#a5500e');

-- (3)
SELECT Name FROM Person
ORDER BY Height DESC;

-- (4)
SELECT Name FROM Person
ORDER BY Height ASC;

-- (5)
SELECT Name FROM Person
ORDER BY Age DESC;

--(6)
SELECT Name FROM Person
WHERE Age > 20;

--(7)
SELECT Name FROM Person
WHERE Age = 18;

--(8)
SELECT Name FROM Person
WHERE Age < 20 OR Age > 30;

--(9)
SELECT Name FROM Person
WHERE Age != 27;

--(10)
SELECT Name FROM Person
WHERE FavoriteColor != 'Red';

--(11)
SELECT Name FROM Person
WHERE FavoriteColor != 'Red' AND FavoriteColor != 'Blue';

--(12)
SELECT Name FROM Person
WHERE FavoriteColor = 'Orange' OR FavoriteColor = 'Green';

--(13)
SELECT Name FROM Person
WHERE FavoriteColor IN ('Orange', 'Green', 'Blue');

--(14)
SELECT Name FROM Person
WHERE FavoriteColor IN ('Yellow', 'Purple');

-- TABLE - ORDERS

--(1)
CREATE TABLE Orders (PersonID integer,ProductName varchar(50),
                    ProductPrice integer, Quantity integer); 

--(2)
INSERT INTO Orders (PersonID, ProductName, ProductPrice, Quantity)
VALUES (1, 'Sandwich', 3, 100), 
    (2, 'Soup', 4, 1), 
    (1, 'Chips', 1, 2000),
	(3, 'Sandwich', 3, 2), 
    (4, 'Chips', 1, 6);

--(3)
SELECT * FROM Orders;

--(4)
SELECT sum(Quantity)
AS total
FROM 
Orders;

--(5)
SELECT sum(Quantity * ProductPrice)
AS total
FROM 
Orders;

--(6)
SELECT sum(Quantity * ProductPrice)
AS total
FROM 
Orders
WHERE PersonID = 1;

-- TABLE - ARTIST

--(1)
INSERT INTO Artist (Name)
VALUES ('ArtistA'),
('ArtistB'),
('ArtistC');

--(2)
SELECT Name from Artist
ORDER BY Name DESC
LIMIT 10;

--(3)
SELECT Name from Artist
ORDER BY Name ASC
LIMIT 5;

--(4)
SELECT Name from Artist
WHERE Name LIKE ('Black%');

--(5)
SELECT Name from Artist
WHERE Name LIKE ('%Black%');

-- TABLE - EMPLOYEE

--(1)
SELECT FirstName, LastName from Employee
WHERE City = 'Calgary';

--(2)
SELECT FirstName, LastName, BirthDate from Employee
ORDER BY BirthDate DESC
LIMIT 1;

--(3)
SELECT FirstName, LastName, BirthDate from Employee
ORDER BY BirthDate ASC
LIMIT 1;

--(4)
SELECT * from Employee
WHERE FirstName = 'Nancy' AND LastName = 'Edwards';

SELECT FirstName, LastName from Employee
WHERE ReportsTo = 2;

--(5)
SELECT count() from Employee
WHERE City = 'Lethbridge';

-- TABLE - INVOICE

--(1)
SELECT count() FROM Invoice
WHERE BillingCountry = 'USA';

--(2)
SELECT max(Total) FROM Invoice

--(3)
SELECT min(Total) FROM Invoice

--(4)
SELECT * FROM Invoice
WHERE Total > 5;

--(5)
SELECT count() FROM Invoice
WHERE Total < 5;

--(6)
SELECT count() FROM Invoice
WHERE BillingState IN ('CA', 'TX', 'AZ');

--(7)
SELECT avg(Total) FROM Invoice;

--(8)
SELECT sum(Total) FROM Invoice;