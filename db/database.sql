CREATE DATABASE IF NOT EXISTS companydb;
USE companydb;
CREATE TABLE employee (
    id INT(11) NOT NULL AUTO_INCREMENT,
    name VARCHAR(45) DEFAULT NULL,
    salary INT(5) DEFAULT NULL,
    PRIMARY KEY (id)
);
DESCRIBE employee;

INSERT INTO employee VALUES
(1, 'Paula', 2000),
(2, 'Sergio', 15000),
(3, 'Tatiana', 8000),
(4, 'Yicela', 28000);