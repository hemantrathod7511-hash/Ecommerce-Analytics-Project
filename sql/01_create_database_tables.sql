CREATE DATABASE IF NOT EXISTS ecommerce_analytics;
USE ecommerce_analytics;
DROP TABLE IF EXISTS Returns; DROP TABLE IF EXISTS Orders; DROP TABLE IF EXISTS Products; DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers(Customer_ID VARCHAR(20) PRIMARY KEY,Customer_Name VARCHAR(100),Gender VARCHAR(20),Age INT,City VARCHAR(50),State VARCHAR(50),Region VARCHAR(50),Signup_Date DATE);
CREATE TABLE Products(Product_ID VARCHAR(20) PRIMARY KEY,Product_Name VARCHAR(150),Category VARCHAR(50),Subcategory VARCHAR(80),Brand VARCHAR(80),Cost_Price DECIMAL(12,2),Selling_Price DECIMAL(12,2));
CREATE TABLE Orders(Order_ID VARCHAR(20),Order_Date DATE,Customer_ID VARCHAR(20),Product_ID VARCHAR(20),Quantity INT,Discount DECIMAL(5,2),Shipping_Cost DECIMAL(12,2),Payment_Method VARCHAR(50),Order_Status VARCHAR(30),PRIMARY KEY(Order_ID,Product_ID));
CREATE TABLE Returns(Return_ID VARCHAR(20) PRIMARY KEY,Order_ID VARCHAR(20),Return_Date DATE,Return_Reason VARCHAR(100));