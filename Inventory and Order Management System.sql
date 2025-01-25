CREATE DATABASE inventory;

USE  inventory;

-- Table 1: Categories
-- information about product categories

CREATE TABLE Categories (
   CategoryID INT AUTO_INCREMENT PRIMARY KEY,
   CategoryName VARCHAR(255) NOT NULL,
   Description TEXT,
   CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE Suppliers (
   SupplierID INT AUTO_INCREMENT PRIMARY KEY,
   SupplierName VARCHAR(255) NOT NULL,
   ContactName VARCHAR(255),
   ContactEmail VARCHAR(255) UNIQUE,
   PhoneNumber VARCHAR(20),
   Address TEXT,
   City VARCHAR(100),
   Country VARCHAR(100),
   CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(255) NOT NULL,
    CategoryID INT NOT NULL,
    SupplierID INT,
    QuantityPerUnit VARCHAR(50),
    UnitPrice DECIMAL(10, 2) NOT NULL,
    UnitsInStock INT DEFAULT 0,
    UnitsOnOrder INT DEFAULT 0,
    ReorderLevel INT DEFAULT 0,
    Discontinued BOOLEAN DEFAULT FALSE,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID),
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);

SHOW TABLES;

INSERT INTO Categories (CategoryName, Description) VALUES
('Electronics', 'Devices and gadgets like mobile phones, laptops, and cameras'),
('Furniture', 'Home and office furniture such as chairs, tables, and sofas'),
('Clothing', 'Men’s, women’s, and children’s apparel'),
('Books', 'Printed and electronic books across various genres'),
('Groceries', 'Everyday essential food items and beverages'),
('Sports', 'Sports equipment and accessories'),
('Beauty', 'Cosmetics and personal care products'),
('Toys', 'Toys and games for children of all ages'),
('Stationery', 'Office supplies, paper, and writing tools'),
('Automotive', 'Vehicle parts and accessories');




INSERT INTO Suppliers (SupplierName, ContactName, ContactEmail, PhoneNumber, Address, City, Country) VALUES
('Tech Solutions', 'Alice Johnson', 'alice.johnson@techsolutions.com', '+1-555-1234', '123 Tech Avenue', 'New York', 'USA'),
('Furniture Co.', 'Bob Smith', 'bob.smith@furnitureco.com', '+1-555-5678', '456 Home Lane', 'Los Angeles', 'USA'),
('Clothing World', 'Carla White', 'carla.white@clothingworld.com', '+1-555-9012', '789 Fashion Street', 'Chicago', 'USA'),
('Book Haven', 'David Brown', 'david.brown@bookhaven.com', '+44-20-7946-0958', '321 Literature Blvd', 'London', 'UK'),
('Fresh Foods', 'Ella Green', 'ella.green@freshfoods.com', '+61-3-9898-7878', '987 Farm Road', 'Melbourne', 'Australia'),
('Sporty Goods', 'Frank Blue', 'frank.blue@sportygoods.com', '+1-555-3456', '654 Activity Way', 'Houston', 'USA'),
('Beauty Supplies', 'Grace Black', 'grace.black@beautysupplies.com', '+1-555-7890', '876 Glamour Blvd', 'Miami', 'USA'),
('Toy Empire', 'Henry White', 'henry.white@toyempire.com', '+91-22-4949-1234', '555 Playland Road', 'Mumbai', 'India'),
('Office Needs', 'Ivy Carter', 'ivy.carter@officeneeds.com', '+1-555-2345', '432 Work Drive', 'San Francisco', 'USA'),
('Auto Parts', 'Jack Gray', 'jack.gray@autoparts.com', '+49-89-123-4567', '654 Vehicle Blvd', 'Munich', 'Germany'),
('Gadget Hub', 'Karen Silver', 'karen.silver@gadgethub.com', '+1-555-6789', '890 Technology Ave', 'Seattle', 'USA'),
('Green Mart', 'Leo Brown', 'leo.brown@greenmart.com', '+33-1-2345-6789', '567 Eco Lane', 'Paris', 'France'),
('Edu Supplies', 'Mia Taylor', 'mia.taylor@edusupplies.com', '+1-555-0123', '678 Knowledge Street', 'Boston', 'USA'),
('Lifestyle Goods', 'Nora Harris', 'nora.harris@lifestylegoods.com', '+65-6789-2345', '123 Harmony Ave', 'Singapore', 'Singapore'),
('Premium Auto', 'Oliver King', 'oliver.king@premiumauto.com', '+1-555-7890', '890 Drive Blvd', 'Detroit', 'USA'),
('Tech Gear', 'Paula Scott', 'paula.scott@techgear.com', '+1-555-6781', '678 Innovation Lane', 'Austin', 'USA'),
('Global Furnishings', 'Quincy Adams', 'quincy.adams@globalfurnishings.com', '+44-16-2345-7890', '789 Comfort Ave', 'Manchester', 'UK'),
('Organic Foods', 'Rita Wilson', 'rita.wilson@organicfoods.com', '+1-555-2347', '432 Nature Blvd', 'Portland', 'USA'),
('Playtime Ltd', 'Steve Morgan', 'steve.morgan@playtime.com', '+1-555-5679', '654 Imagination Way', 'Denver', 'USA'),
('World Books', 'Tina Lopez', 'tina.lopez@worldbooks.com', '+34-91-1234-5678', '890 Story Ave', 'Madrid', 'Spain');


INSERT INTO Products (ProductName, CategoryID, SupplierID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) VALUES
('iPhone 14', 1, 1, '1 unit', 999.99, 50, 10, 5, FALSE),
('Galaxy S22', 1, 1, '1 unit', 899.99, 60, 20, 10, FALSE),
('Dell XPS 15', 1, 1, '1 unit', 1299.99, 30, 5, 5, FALSE),
('Office Chair', 2, 2, '1 unit', 150.00, 100, 15, 20, FALSE),
('Wooden Dining Table', 2, 2, '1 unit', 450.00, 20, 5, 5, FALSE),
('Men\'s T-Shirt', 3, 3, '10 units', 100.00, 200, 50, 25, FALSE),
('Women\'s Dress', 3, 3, '5 units', 150.00, 150, 30, 20, FALSE),
('Fiction Book', 4, 4, '1 unit', 15.99, 500, 100, 50, FALSE),
('Science Journal', 4, 4, '1 unit', 25.99, 300, 50, 20, FALSE),
('Organic Apples', 5, 5, '10 kg', 30.00, 200, 50, 25, FALSE),
('Basketball', 6, 6, '1 unit', 29.99, 80, 20, 10, FALSE),
('Football', 6, 6, '1 unit', 34.99, 100, 15, 10, FALSE),
('Lipstick', 7, 7, '1 unit', 20.00, 300, 50, 25, FALSE),
('Face Cream', 7, 7, '1 unit', 35.00, 250, 40, 20, FALSE),
('Toy Car', 8, 8, '1 unit', 15.00, 500, 50, 50, FALSE),
('Puzzle Game', 8, 8, '1 unit', 20.00, 300, 40, 20, FALSE),
('Notebook', 9, 9, '1 unit', 2.50, 1000, 200, 100, FALSE),
('Ballpoint Pen', 9, 9, '10 units', 5.00, 2000, 500, 250, FALSE),
('Car Tire', 10, 10, '1 unit', 120.00, 150, 20, 15, FALSE),
('Engine Oil', 10, 10, '1 liter', 25.00, 300, 30, 20, FALSE);

show tables;
select * from Categories;
select * from Suppliers;
select * from Products;


-- Table: Customers
-- Stores customer information.

CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerName VARCHAR(255) NOT NULL,
    ContactEmail VARCHAR(255) UNIQUE,
    PhoneNumber VARCHAR(20),
    Address TEXT,
    City VARCHAR(100),
    Country VARCHAR(100),
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);





-- 5. Table: Orders
-- Stores order details like date, customer, and status.
CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT NOT NULL,
    OrderDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ShippedDate TIMESTAMP NULL,
    Status ENUM('Pending', 'Shipped', 'Cancelled') DEFAULT 'Pending',
    TotalAmount DECIMAL(15, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);


CREATE TABLE OrderDetails (
    OrderDetailID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL,
    UnitPrice DECIMAL(10, 2) NOT NULL,
    Discount DECIMAL(5, 2) DEFAULT 0,
    TotalPrice DECIMAL(15, 2) AS (Quantity * UnitPrice * (1 - Discount / 100)) STORED,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);



INSERT INTO Customers (CustomerName, ContactEmail, PhoneNumber, Address, City, Country) VALUES
('Alice Johnson', 'alice.johnson@example.com', '+1-555-1234', '123 Main St', 'New York', 'USA'),
('Bob Smith', 'bob.smith@example.com', '+1-555-5678', '456 Maple Rd', 'Los Angeles', 'USA'),
('Carla White', 'carla.white@example.com', '+1-555-9012', '789 Pine Ave', 'Chicago', 'USA'),
('David Brown', 'david.brown@example.com', '+44-20-7946-0958', '321 Elm St', 'London', 'UK'),
('Ella Green', 'ella.green@example.com', '+61-3-9898-7878', '987 Oak Rd', 'Melbourne', 'Australia'),
('Frank Blue', 'frank.blue@example.com', '+1-555-3456', '654 Cedar Ln', 'Houston', 'USA'),
('Grace Black', 'grace.black@example.com', '+1-555-7890', '876 Birch Blvd', 'Miami', 'USA'),
('Henry White', 'henry.white@example.com', '+91-22-4949-1234', '555 Palm Rd', 'Mumbai', 'India'),
('Ivy Carter', 'ivy.carter@example.com', '+1-555-2345', '432 Willow Dr', 'San Francisco', 'USA'),
('Jack Gray', 'jack.gray@example.com', '+49-89-123-4567', '654 Spruce Blvd', 'Munich', 'Germany'),
('Karen Silver', 'karen.silver@example.com', '+1-555-6789', '890 Redwood Ave', 'Seattle', 'USA'),
('Leo Brown', 'leo.brown@example.com', '+33-1-2345-6789', '567 Cypress Ln', 'Paris', 'France'),
('Mia Taylor', 'mia.taylor@example.com', '+1-555-0123', '678 Magnolia St', 'Boston', 'USA'),
('Nora Harris', 'nora.harris@example.com', '+65-6789-2345', '123 Cherry Ave', 'Singapore', 'Singapore'),
('Oliver King', 'oliver.king@example.com', '+1-555-7890', '890 Poplar Blvd', 'Detroit', 'USA'),
('Paula Scott', 'paula.scott@example.com', '+1-555-6781', '678 Aspen Ln', 'Austin', 'USA'),
('Quincy Adams', 'quincy.adams@example.com', '+44-16-2345-7890', '789 Dogwood Ave', 'Manchester', 'UK'),
('Rita Wilson', 'rita.wilson@example.com', '+1-555-2347', '432 Sequoia Blvd', 'Portland', 'USA'),
('Steve Morgan', 'steve.morgan@example.com', '+1-555-5679', '654 Hickory Ln', 'Denver', 'USA'),
('Tina Lopez', 'tina.lopez@example.com', '+34-91-1234-5678', '890 Maple Rd', 'Madrid', 'Spain'),

('Uma Fisher', 'uma.fisher@example.com', '+1-555-1111', '111 Beech Ln', 'Phoenix', 'USA'),
('Victor Lee', 'victor.lee@example.com', '+44-20-2345-6789', '222 Hazel Blvd', 'Edinburgh', 'UK'),
('Wendy Scott', 'wendy.scott@example.com', '+61-3-1234-5678', '333 Fir Ave', 'Sydney', 'Australia'),
('Xavier Brown', 'xavier.brown@example.com', '+91-22-1111-2222', '444 Maple St', 'Bangalore', 'India'),
('Yvonne Clarke', 'yvonne.clarke@example.com', '+1-555-5670', '555 Alder Rd', 'San Diego', 'USA'),
('Zachary Hill', 'zachary.hill@example.com', '+1-555-7895', '666 Redwood Blvd', 'Dallas', 'USA'),
('Angela Reed', 'angela.reed@example.com', '+44-20-5678-1234', '777 Cedar Ave', 'Glasgow', 'UK'),
('Brian White', 'brian.white@example.com', '+61-3-6789-0123', '888 Pine Blvd', 'Perth', 'Australia'),
('Cynthia Black', 'cynthia.black@example.com', '+91-22-1234-5678', '999 Willow Ln', 'Delhi', 'India'),
('Derek Harris', 'derek.harris@example.com', '+1-555-9876', '1010 Oak St', 'Atlanta', 'USA'),
('Emily Scott', 'emily.scott@example.com', '+44-20-3456-7890', '1111 Elm Rd', 'Birmingham', 'UK'),
('Fred Morgan', 'fred.morgan@example.com', '+61-3-2345-6789', '1212 Birch Blvd', 'Adelaide', 'Australia'),
('Gina White', 'gina.white@example.com', '+91-22-5678-1234', '1313 Palm Ave', 'Hyderabad', 'India'),
('Howard Lee', 'howard.lee@example.com', '+1-555-6543', '1414 Maple St', 'Orlando', 'USA'),
('Irene Taylor', 'irene.taylor@example.com', '+44-20-7890-3456', '1515 Cedar Ln', 'Liverpool', 'UK'),
('James Brown', 'james.brown@example.com', '+61-3-3456-7890', '1616 Spruce Blvd', 'Brisbane', 'Australia'),
('Kelly Smith', 'kelly.smith@example.com', '+91-22-9012-3456', '1717 Willow Blvd', 'Pune', 'India'),
('Luke Carter', 'luke.carter@example.com', '+1-555-6782', '1818 Aspen Ave', 'Salt Lake City', 'USA'),
('Monica Green', 'monica.green@example.com', '+44-20-5670-2345', '1919 Redwood Rd', 'Sheffield', 'UK'),
('Nathan Gray', 'nathan.gray@example.com', '+61-3-4567-8901', '2020 Cypress Rd', 'Darwin', 'Australia');




INSERT INTO Orders (CustomerID, OrderDate, ShippedDate, Status, TotalAmount) VALUES
(1, '2025-01-15', '2025-01-18', 'Shipped', 250.50),
(2, '2025-01-10', '2025-01-12', 'Shipped', 150.75),
(3, '2025-01-12', '2025-01-14', 'Cancelled', 0.00),
(4, '2025-01-08', '2025-01-11', 'Shipped', 345.00),
(5, '2025-01-16', NULL, 'Pending', 100.00),
(6, '2025-01-11', '2025-01-13', 'Shipped', 220.40),
(7, '2025-01-09', '2025-01-11', 'Shipped', 480.00),
(8, '2025-01-07', '2025-01-10', 'Shipped', 125.60),
(9, '2025-01-06', NULL, 'Pending', 300.00),
(10, '2025-01-05', '2025-01-07', 'Shipped', 99.99),
(11, '2025-01-04', '2025-01-06', 'Shipped', 189.50),
(12, '2025-01-03', NULL, 'Pending', 75.25),
(13, '2025-01-14', '2025-01-16', 'Shipped', 140.60),
(14, '2025-01-02', '2025-01-05', 'Shipped', 220.00),
(15, '2025-01-01', '2025-01-03', 'Shipped', 315.00),
(16, '2025-01-13', '2025-01-15', 'Shipped', 410.75),
(17, '2025-01-15', '2025-01-18', 'Shipped', 500.99),
(18, '2025-01-09', NULL, 'Pending', 250.00),
(19, '2025-01-10', '2025-01-12', 'Shipped', 345.40),
(20, '2025-01-08', '2025-01-11', 'Shipped', 129.95);



INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice, Discount) VALUES
(1, 3, 2, 1299.99, 10),
(1, 5, 1, 450.00, 0),
(2, 6, 3, 100.00, 5),
(3, 8, 4, 20.00, 0),
(4, 10, 2, 120.00, 15),
(5, 1, 1, 999.99, 20),
(6, 2, 2, 899.99, 10),
(7, 4, 5, 15.99, 0),
(8, 7, 3, 150.00, 10),
(9, 9, 6, 2.50, 0),
(10, 12, 2, 29.99, 5),
(11, 13, 4, 20.00, 0),
(12, 14, 1, 35.00, 10),
(13, 15, 2, 15.00, 5),
(14, 16, 3, 20.00, 0),
(15, 18, 5, 5.00, 0),
(16, 19, 4, 120.00, 15),
(17, 11, 2, 30.00, 10),
(18, 17, 1, 410.75, 5),
(19, 20, 3, 129.95, 0),
(20, 2, 7, 899.99, 5);

show tables;

select * from OrderDetails;
select * from Categories;


SELECT Products.ProductName, Categories.CategoryName
FROM Products
INNER JOIN Categories
ON Products.CategoryID = Categories.CategoryID;


-- Q. list products and their suppliers
SELECT Products.ProductName, Suppliers.SupplierName
FROM Products
INNER JOIN Suppliers
ON Products.CategoryID = Suppliers.SupplierID;


-- 3. Products, Categories, and Suppliers
-- Objective: Combine products with their categories and suppliers.
SELECT Products.ProductName, Suppliers.SupplierName, Categories.CategoryName
FROM Products
INNER JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID;

-- get all orders placed by customers
-- name , orderid of name- 

SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.OrderID;

-- Customers who have placed order and name of the product ordered
SELECT Customers.CustomerName, Orders.OrderID, Products.ProductName
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.OrderID
INNER JOIN Products ON Customers.CustomerID = Products.ProductID;

SELECT
Customers.CustomerName,
Products.ProductName,
Orders.OrderID
FROM
Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
INNER JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
INNER JOIN Products ON OrderDetails.ProductID = Products.ProductID;



-- 6 .List all suppliers who provide products in a specific category

SELECT
Suppliers.SupplierName,
Categories.CategoryName,
Products.ProductName
FROM 
Suppliers
INNER JOIN Products ON Suppliers.SupplierID = Products.SupplierID
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID;

-- 7. Find orders placed by a specific customer -CustomerName = 'Frank Blue';
select Customers.CustomerName,  Orders.OrderID, OrderDate
FROM
Customers
INNER JOIN
Orders
ON
Customers.CustomerID = Orders.CustomerID
WHERE
Customers.CustomerName = 'Frank Blue';

-- 8. List categories and the total number of products in each
SELECT
Categories.CategoryName,
COUNT(Products.ProductID) AS TotalProducts
FROM
Categories
INNER JOIN 
Products
On Categories.CategoryID = Products.ProductID
GROUP BY Categories.CategoryName;


SELECT
Customers.CustomerName,
COUNT(Orders.OrderID) AS TotalOrder
FROM
Customers
INNER JOIN 
Orders
On Customers.CustomerID = Orders.OrderID
GROUP BY Customers.CustomerName;






