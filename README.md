# Inventory and Order Management System using SQL

## 🛠 Project Overview
The Inventory and Order Management System is a database project that simulates the management of inventory, orders, customers, and suppliers in a retail or e-commerce context. The system is built with SQL and leverages advanced queries, including joins (e.g., inner joins), to retrieve and manipulate data efficiently across six interconnected tables.

This project demonstrates real-world database management concepts, making it an ideal example for learning or showcasing SQL skills.

### 🚀 Features
Customer Management:
Store customer information such as name, contact details, and addresses.
Product Inventory Management:
Maintain detailed information about products, such as name, price, and stock availability.
Order Tracking:
Record customer orders, including order details and statuses.
Supplier Management:
Manage supplier details and their associated products.
Inventory Updates:
Track inventory levels and automatically update stock after each order.
Data Analysis:
Perform complex queries and data analysis using SQL joins to generate meaningful insights.

## 📂 Database Schema
1. Customers Table
```
Column Name	Data Type	Description
customer_id	INT (Primary Key)	Unique ID for each customer
name	VARCHAR(100)	Customer's full name
email	VARCHAR(100)	Customer's email address
phone	VARCHAR(15)	Customer's phone number
```
2. Products Table
```Column Name	Data Type	Description
product_id	INT (Primary Key)	Unique ID for each product
name	VARCHAR(100)	Product name
price	DECIMAL(10, 2)	Product price
stock	INT	Available stock quantity
```
3. Orders Table
   ```
Column Name	Data Type	Description
order_id	INT (Primary Key)	Unique ID for each order
customer_id	INT (Foreign Key)	Linked to Customers table
order_date	DATE	Date of the order
status	VARCHAR(50)	Order status (e.g., "Shipped", "Pending")
```
5. OrderDetails Table
```
Column Name	Data Type	Description
order_detail_id	INT (Primary Key)	Unique ID for order detail
order_id	INT (Foreign Key)	Linked to Orders table
product_id	INT (Foreign Key)	Linked to Products table
quantity	INT	Quantity ordered
```
6. Suppliers Table
```Column Name	Data Type	Description
supplier_id	INT (Primary Key)	Unique ID for each supplier
name	VARCHAR(100)	Supplier's name
contact_info	VARCHAR(255)	Contact details of supplier
```
7. ProductSuppliers Table
```Column Name	Data Type	Description
product_supplier_id	INT (Primary Key)	Unique ID for the link
product_id	INT (Foreign Key)	Linked to Products table
supplier_id	INT (Foreign Key)	Linked to Suppliers table
```
🔍 Key SQL Operations
1. Inner Join: Retrieve Orders with Customer Details

2. Join Multiple Tables: Order Details with Product Information

3. Stock Update After Orders

4. Suppliers and Product Information

📈 Insights and Visualizations
The system provides the following actionable insights:

-* Total sales revenue per product or customer.
-* Inventory trends (e.g., low stock alerts).
-* Supplier contributions to the product catalog.
-* Popular products and order trends.

### ⚙️ Setup Instructions
Requirements
SQL Server (MySQL, PostgreSQL, or SQLite).
SQL client like MySQL Workbench or DBeaver.
-* Steps
-  Clone the repository:
-  Import the SQL script file inventory_management.sql into your SQL client.
-  Run the script to create and populate tables.
-  Execute queries to perform data analysis or interact with the system.

-* 🛠️ Technologies Used
-  SQL for database design and queries.
-  Relational database concepts like primary keys, foreign keys, and joins.
-  Data manipulation and aggregation techniques.

📌 Project Highlights
-  Hands-on implementation of Inner Joins and multi-table queries.
-  Real-world database modeling with a focus on relationships.
  Insights and trend analysis through SQL queries.

🤝 Contributing
Contributions are welcome! If you have ideas for improvements, feel free to fork this repository and submit a pull request.
