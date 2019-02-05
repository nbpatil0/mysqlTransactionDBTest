-- DROP DATABASE IF EXISTS supermarket;

-- CREATE DATABASE supermarket CHARACTER SET utf8;

USE supermarket;

-- Products table:

DROP TABLE IF EXISTS Products;

CREATE TABLE Products
-- ProductID digits reserved for management encoding
(ProductID VARCHAR(30) NOT NULL,
ProductName VARCHAR(100) NULL,
ProductUnitPrice INT NULL,
CONSTRAINT pk_productID PRIMARY KEY (ProductID)
) ENGINE=InnoDB;

-- 在MySQL內寫入一筆資料
INSERT INTO Products(ProductID, ProductName, ProductUnitPrice)
VALUES ("veg001","potato","10");
