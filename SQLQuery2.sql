create database Order_Management_System;
use Order_Management_System;


CREATE TABLE Users (
    userId INT PRIMARY KEY,
    username VARCHAR(50),
    password VARCHAR(50),
    role VARCHAR(20)
);



CREATE TABLE Products (
    productId INT PRIMARY KEY,
    productName VARCHAR(100),
    description VARCHAR(255),
    price DECIMAL(10, 2),
    quantityInStock INT,
    type VARCHAR(50)
);


CREATE TABLE Orders (
    orderId INT PRIMARY KEY IDENTITY(1,1),
    userId INT FOREIGN KEY REFERENCES Users(userId),
    productId INT FOREIGN KEY REFERENCES Products(productId),
    quantity int
);

CREATE TABLE Electronics (
    productId INT primary key, 
	brand varchar(50),
	warrantyPeriod int,
	FOREIGN KEY (productId) REFERENCES Products(productId)
);

CREATE TABLE Clothing (
    productId INT primary key, 
	size int,
	color varchar(20),
	FOREIGN KEY (productId) REFERENCES Products(productId)
);

select * from Orders;
select * from Products;
select * from Users;


-- SELECT 
--     o.orderId, 
--     p.productName, 
--     p.description, 
--     p.price, 
--     o.userId, 
--     o.productId
-- FROM Orders o
-- JOIN Users u ON o.userId = u.userId
-- JOIN Products p ON o.productId = p.productId
-- WHERE u.username = 'Prit' ;




