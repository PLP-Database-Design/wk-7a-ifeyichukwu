/* Answer to Question 1
    An SQL query to transform this table into 1NF, ensuring that each row represents a single product for an order
*/

USE salesdb

CREATE TABLE ProductDetails (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerName VARCHAR(100),
    Products VARCHAR(20)
);

INSERT INTO ProductDetails (CustomerName, Products)
VALUES
('John Doe', 'Laptop'),
('John Doe', 'Mouse'),
('Jane Smith', 'Tablet'),
('Jane Smith', 'Keyboard'),
('Jane Smith', 'Mouse'),
('Emily Clark', 'Phone');


/* Answer to Question 2
    An SQL query to transform this table into 2NF by removing partial dependencies. Ensure that each non-key column fully depends on the entire primary key.
*/

USE salesdb

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerName VARCHAR(100)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    ProductName VARCHAR(20),
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);