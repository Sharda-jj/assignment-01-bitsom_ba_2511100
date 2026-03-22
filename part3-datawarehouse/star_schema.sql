
-- DIMENSION TABLES


CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE,
    month INT,
    year INT
);

CREATE TABLE dim_store (
    store_id VARCHAR(10) PRIMARY KEY,
    store_name VARCHAR(100),
    store_city VARCHAR(50)
);

CREATE TABLE dim_product (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);


-- FACT TABLE


CREATE TABLE fact_sales (
    sale_id INT PRIMARY KEY,
    date_id INT,
    store_id VARCHAR(10),
    product_id VARCHAR(10),
    units_sold INT,
    unit_price DECIMAL(10,2),
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);


-- INSERT CLEANED DATA


-- Dates (converted to YYYY-MM-DD)
INSERT INTO dim_date VALUES
(1, '2023-08-29', 8, 2023),
(2, '2023-12-12', 12, 2023),
(3, '2023-02-05', 2, 2023),
(4, '2023-02-20', 2, 2023),
(5, '2023-01-15', 1, 2023),
(6, '2023-08-09', 8, 2023),
(7, '2023-03-31', 3, 2023),
(8, '2023-10-26', 10, 2023),
(9, '2023-12-08', 12, 2023),
(10, '2023-08-15', 8, 2023);


-- Stores 
INSERT INTO dim_store VALUES
('S001', 'Chennai Anna', 'Chennai'),
('S002', 'Delhi South', 'Delhi'),
('S003', 'Bangalore MG', 'Bangalore'),
('S004', 'Pune FC Road', 'Pune');


-- Products 
INSERT INTO dim_product VALUES
('P001', 'Speaker', 'Electronics'),
('P002', 'Tablet', 'Electronics'),
('P003', 'Phone', 'Electronics'),
('P004', 'Smartwatch', 'Electronics'),
('P005', 'Atta 10kg', 'Grocery'),
('P006', 'Jeans', 'Clothing'),
('P007', 'Biscuits', 'Groceries');


-- FACT TABLE 

INSERT INTO fact_sales VALUES
(1, 1, 'S001', 'P001', 3, 49263),
(2, 2, 'S001', 'P002', 11, 23226),
(3, 3, 'S001', 'P003', 20, 48703),
(4, 4, 'S002', 'P002', 14, 23226),
(5, 5, 'S001', 'P004', 10, 58851),
(6, 6, 'S003', 'P005', 12, 52464),
(7, 7, 'S004', 'P004', 6, 58851),
(8, 8, 'S004', 'P006', 16, 2317),
(9, 9, 'S003', 'P007', 9, 27470),
(10, 10, 'S003', 'P004', 3, 58851);
