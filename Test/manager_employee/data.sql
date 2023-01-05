CREATE DATABASE employeesdata;
use employeesdata;

create table employees(
id int AUTO_INCREMENT PRIMARY key,
name varchar(255),
email VARCHAR(255),
address VARCHAR(255),
phone INT,
salary DOUBLE,
department varchar(255)
);