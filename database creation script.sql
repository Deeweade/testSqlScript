CREATE DATABASE ProductsAndCategories;

GO;

CREATE TABLE Products (
    Id INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL
);

GO;

CREATE TABLE Categories (
    Id INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL
);

GO;

CREATE TABLE ProductCategories (
    ProductId INT,
    CategoryId INT,
    FOREIGN KEY (ProductId) REFERENCES Products(Id),
    FOREIGN KEY (CategoryId) REFERENCES Categories(Id)
);
