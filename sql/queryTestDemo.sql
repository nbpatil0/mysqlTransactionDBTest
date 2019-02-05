select *
from Customers, Orders
where Customers.UserID = Orders.UserID;

select OrderID, Customers.UserID, TransactionTime
from Customers, Orders
where Customers.UserID = Orders.UserID;

