CREATE DATABASE Flowster;

USE Flowster;

CREATE TABLE tblEmployees (
    id SERIAL PRIMARY KEY,
    SamAccountName VARCHAR(50) NOT NULL,
    Guest INT,
    AD_EmployeeId VARCHAR(100),
    Surname VARCHAR(50) NOT NULL,
    GivenName VARCHAR(50) NOT NULL,
    changed DATE,
    isActive INT,
    ExpirationDate DATE
)