CREATE DATABASE IF NOT EXISTS alx_book_store;
USE ALX_BOOK_STORE;

CREATE TABLE Authors (
    author_id_ID INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL
);

CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id INT,
    price DOUBLE,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Customers (
    customers_id INT AUTO_INCREMENT PRIMARY KEY,
    customers_name VARCHAR(215) NOT NULL,
    email VARCHAR(215),
    address TEXT
);

CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
   customers_id INT,
    order_date DATE,
    FOREIGN KEY (customers_id) REFERENCES Customers(customers_id)
);

CREATE TABLE Order_Details (
    orderdetailsid INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantitative DOUBLE,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
