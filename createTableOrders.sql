CREATE TABLE ORDERS (
    id SERIAL PRIMARY KEY,
    date DATE NOT NULL,
    customer_id INT,
    product_name VARCHAR(100) NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    CONSTRAINT fk_customer
        FOREIGN KEY(customer_id) 
        REFERENCES CUSTOMERS(id)
);