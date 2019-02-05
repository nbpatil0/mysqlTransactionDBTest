-- DROP DATABASE IF EXISTS supermarket;

-- CREATE DATABASE supermarket CHARACTER SET utf8;

USE supermarket;

-- TransactionRecords table:

DROP TABLE IF EXISTS TransactionRecords;

CREATE TABLE TransactionRecords
-- 
(OrderID VARCHAR(40) NOT NULL,
ProductID VARCHAR(30) NOT NULL,
PurchasedQuantity INT NULL,
CONSTRAINT PRIMARY KEY pk_orderID_productID (OrderID, ProductID),
CONSTRAINT fk_productID_productID FOREIGN KEY (ProductID) REFERENCES Products (ProductID) ON UPDATE CASCADE
) ENGINE=InnoDB;

-- 在MySQL內寫入一筆資料
INSERT INTO TransactionRecords(OrderID,ProductID, PurchasedQuantity)
VALUES ("0001","veg001",10);
