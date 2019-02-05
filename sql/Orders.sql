-- DROP DATABASE IF EXISTS supermarket;

-- CREATE DATABASE supermarket CHARACTER SET utf8;

USE supermarket;

-- Orders table:

DROP TABLE IF EXISTS Orders;

CREATE TABLE Orders
-- OrderID digits reserved for management encoding
(OrderID VARCHAR(40) NOT NULL PRIMARY KEY,
UserID VARCHAR(40) NOT NULL,
-- Auto-generation of timestamp while inserting a new row
TransactionTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP NULL,
CONSTRAINT fk_userID_userID FOREIGN KEY(UserID) REFERENCES Customers (UserID) ON UPDATE CASCADE 
) ENGINE=InnoDB;

-- 在MySQL內寫入一筆資料，交易時間 MySQL 會自動生成
INSERT INTO Orders(OrderID, UserID)
VALUES ("0001","Uce794a792d4827663585e4466c7dab81");
