-- DROP DATABASE IF EXISTS supermarket;

-- CREATE DATABASE supermarket CHARACTER SET utf8;

USE supermarket;

-- Customers table:

DROP TABLE IF EXISTS Customers;

CREATE TABLE Customers
-- LINE UserID length = 33
(UserID VARCHAR(40) NOT NULL,
FirstName VARCHAR(30) NULL,
LastName VARCHAR(30) NULL,
Tel VARCHAR(30) NULL,
Email VARCHAR(100),
Photo MEDIUMBLOB NULL,
QRcode MEDIUMBLOB NULL,
CONSTRAINT pk_userID PRIMARY KEY (UserID) 
) ENGINE=InnoDB;


-- 在MySQL內寫入一筆資料，但圖片（照片和QRcode）是binary stream，需要另外靠程式語言幫忙寫入
INSERT INTO Customers(UserID, FirstName, LastName, Tel, Email)
VALUES ("abcdefghijklmnopqrstuvwxyz123456", "Robert", "Aintaman", "0912345678", "testtest@gmail.com");