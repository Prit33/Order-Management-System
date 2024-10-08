Creating MS-SQL Schema:

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

-------------------------------------------------------------------------------------
1.	Create User
![alt text](image.png)
![alt text](image-1.png)
 
 

2.	Adding Product
![alt text](image-2.png)
![alt text](image-3.png)
 
-	Product won’t be created if User is not an Admin
![alt text](image-4.png)
 


3.	Create Order
 ![alt text](image-5.png)
![alt text](image-6.png)
 


4.	Get All Products
 ![alt text](image-7.png)

5.	Get Orders by User
 ![alt text](image-8.png)
![alt text](image-9.png)
 

6.	Cancel Order
![alt text](image-10.png)
 ![alt text](image-11.png)

7.	User Not Found Exception
 ![alt text](image-12.png)

8.	Order Not Found Exception
 ![alt text](image-13.png)
