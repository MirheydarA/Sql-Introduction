CREATE DATABASE DemoApp
USE DemoApp

CREATE TABLE Users (
	Id int PRIMARY KEY IDENTITY,
	Name nvarchar(50) NOT NULL,
	Surname nvarchar(50) NOT NULL,
	Email nvarchar(50) UNIQUE,
	RegistrationDate date DEFAULT GETDATE() CHECK(RegistrationDate < GETDATE()), 
	ContactNumber nvarchar(50) DEFAULT '+994000000000',
	Age int CHECK(Age > 18),
	Address nvarchar(50)
)
INSERT INTO Users
VALUES('Heyder', 'Alizade', 'heyder@gmail.com', default, default, 19,'wresefs');
INSERT INTO Users
VALUES('Heyder1', 'Alizade1', 'heyder2@gmail.com', default, default, 19, 'asdfgnbv')
INSERT INTO Users
VALUES('Heyder3', 'Alizade3', 'heyder3@gmail.com', default, default, 20, 'aarghgbvr')
select Name, Surname, Email from Users 

--CREATE TABLE Categories (
--	Id int PRIMARY KEY IDENTITY,
--	Name nvarchar(50) NOT NULL,
--	Slug nvarchar(50) UNIQUE,
--	CreatedAt date DEFAULT GETDATE() CHECK(CreatedAt < GETDATE()), 
--	IsActive bit 
--)

--INSERT INTO Categories
--VALUES ('Heyder', 'sfafd', default, 1)
--INSERT INTO Categories
--VALUES ('Heyder1', 'sfsff', default, 0)
--INSERT INTO Categories
--VALUES ('Heyder3', 'asgasrsf', default, 1)

select Name, IsActive from Categories

