DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100),
    home_address VARCHAR(255)
);

CREATE TABLE dogs (
    dog_id INT AUTO_INCREMENT,
    customer_id INT NOT NULL,
    dog_name VARCHAR(50) NOT NULL,
    breed VARCHAR(50),
    age INT,
    special_instructions VARCHAR(255),
    PRIMARY KEY (dog_id),
    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);

CREATE TABLE walkers (
    walker_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100)
);

	CREATE TABLE walks (
    walk_id INT AUTO_INCREMENT,
    dog_id INT NOT NULL,
    walker_id INT NOT NULL,
    walk_date DATE NOT NULL,
    start_time DATETIME NOT NULL,
    duration_minutes INT NOT NULL,
    status VARCHAR(20),
    PRIMARY KEY (walk_id),
    FOREIGN KEY (dog_id)
        REFERENCES dogs(dog_id),
    FOREIGN KEY (walker_id)
        REFERENCES walkers(walker_id)
);