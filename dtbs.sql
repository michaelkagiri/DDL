-- create customer table
CREATE TABLE Customer (
    Customer_id VARCHAR2(20) PRIMARY KEY,
    Customer_Name VARCHAR2(20) NOT NULL,
    Customer_Tel NUMBER
);


-- create the product table
CREATE TABLE Product (
    Product_id VARCHAR2(20) PRIMARY KEY,
    Product_Name VARCHAR2(20) NOT NULL,
    Price NUMBER CHECK (Price > 0) -- Ensuring positive values
);


-- create the orders table
CREATE TABLE Orders (
    Customer_id VARCHAR2(20),
    Product_id VARCHAR2(20),
    Quantity NUMBER,
    Total_amount NUMBER,
    OrderDate DATE DEFAULT SYSDATE, -- Adding OrderDate with default value
    CONSTRAINT fk_customer FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
    CONSTRAINT fk_product FOREIGN KEY (Product_id) REFERENCES Product(Product_id)
);


-- alter product table to add category
ALTER TABLE Product ADD Category VARCHAR2(20);


-- alter orders to add order dates
ALTER TABLE Orders ADD OrderDate DATE DEFAULT SYSDATE;