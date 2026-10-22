
USE lana_dog_walking;

DELETE FROM walks WHERE walk_id > 0;
DELETE FROM dogs WHERE dog_id > 0;
DELETE FROM walkers WHERE walker_id > 0;
DELETE FROM customers WHERE customer_id > 0;

ALTER TABLE customers AUTO_INCREMENT = 1;
ALTER TABLE walkers AUTO_INCREMENT = 1;
ALTER TABLE dogs AUTO_INCREMENT = 1;
ALTER TABLE walks AUTO_INCREMENT = 1;

INSERT INTO customers
(first_name, last_name, phone, email, home_address)
VALUES
('James', 'Miller', '555-0101', 'james.miller@example.com', '123 Maple Street'),
('Olivia', 'Reed', '555-0102', 'olivia.reed@example.com', '45 Oak Avenue'),
('Noah', 'Brooks', '555-0103', 'noah.brooks@example.com', '78 Pine Road'),
('Emma', 'Davis', '555-0104', 'emma.davis@example.com', '12 Cedar Lane'),
('Liam', 'Carter', '555-0105', 'liam.carter@example.com', '90 Birch Drive'),
('Ava', 'Thompson', '555-0106', 'ava.thompson@example.com', '34 Willow Street'),
('Ethan', 'Parker', '555-0107', 'ethan.parker@example.com', '67 Elm Avenue'),
('Mia', 'Flores', '555-0108', 'mia.flores@example.com', '81 Cherry Lane'),
('Lucas', 'Bennett', '555-0109', 'lucas.bennett@example.com', '56 Walnut Road'),
('Sophia', 'Green', '555-0110', 'sophia.green@example.com', '23 Aspen Street'),
('Mason', 'Collins', '555-0111', 'mason.collins@example.com', '102 Spruce Drive');

INSERT INTO walkers
(first_name, last_name, phone, email)
VALUES
('Sarah', 'Johnson', '555-0102', 'sarah.johnson@example.com'),
('Daniel', 'Ruiz', '555-0202', 'daniel.ruiz@example.com'),
('Emily', 'Foster', '555-0203', 'emily.foster@example.com'),
('Marcus', 'Lee', '555-0204', 'marcus.lee@example.com'),
('Rachel', 'Kim', '555-0205', 'rachel.kim@example.com'),
('Tyler', 'Adams', '555-0206', 'tyler.adams@example.com'),
('Hannah', 'Brooks', '555-0207', 'hannah.brooks@example.com'),
('David', 'Chen', '555-0208', 'david.chen@example.com'),
('Nicole', 'Wright', '555-0209', 'nicole.wright@example.com'),
('Jordan', 'Price', '555-0210', 'jordan.price@example.com'),
('Chloe', 'Rivera', '555-0211', 'chloe.rivera@example.com');

INSERT INTO dogs
(customer_id, dog_name, breed, age, special_instructions)
VALUES
(1, 'Bella', 'Golden Retriever', 3, 'Friendly, needs water breaks'),
(2, 'Max', 'German Shepherd', 5, 'Prefers quiet walking routes'),
(3, 'Luna', 'Labrador Retriever', 2, 'Very energetic'),
(4, 'Charlie', 'Beagle', 4, 'Keep away from busy roads'),
(5, 'Daisy', 'Poodle', 6, 'Walk at a slower pace'),
(6, 'Rocky', 'Bulldog', 3, 'Avoid long walks in hot weather'),
(7, 'Coco', 'Chihuahua', 7, 'Gets nervous around large dogs'),
(8, 'Milo', 'Border Collie', 2, 'Needs plenty of exercise'),
(1, 'Bailey', 'Golden Retriever', 1, 'Still learning leash manners'),
(9, 'Ruby', 'Boxer', 4, 'Loves outdoor activities'),
(10, 'Teddy', 'Shih Tzu', 5, 'Short walks preferred');

INSERT INTO walks
(dog_id, walker_id, walk_date, start_time, duration_minutes, status)
VALUES
(1, 1, '2026-10-23', '2026-10-23 09:00:00', 30, 'Scheduled'),
(2, 2, '2026-10-19', '2026-10-19 08:30:00', 45, 'Completed'),
(3, 3, '2026-10-20', '2026-10-20 12:00:00', 30, 'Completed'),
(4, 1, '2026-10-21', '2026-10-21 10:15:00', 60, 'Completed'),
(5, 2, '2026-10-24', '2026-10-24 11:00:00', 30, 'Scheduled'),
(6, 4, '2026-10-25', '2026-10-25 14:00:00', 45, 'Scheduled'),
(7, 5, '2026-10-18', '2026-10-18 09:30:00', 30, 'Completed'),
(8, 1, '2026-10-26', '2026-10-26 16:00:00', 45, 'Scheduled'),
(9, 3, '2026-10-17', '2026-10-17 13:00:00', 30, 'Cancelled'),
(10, 4, '2026-10-27', '2026-10-27 08:00:00', 60, 'Scheduled'),
(11, 2, '2026-10-28', '2026-10-28 15:30:00', 30, 'Scheduled');

SELECT
    (SELECT COUNT(*) FROM customers) AS total_customers,
    (SELECT COUNT(*) FROM walkers) AS total_walkers,
    (SELECT COUNT(*) FROM dogs) AS total_dogs,
    (SELECT COUNT(*) FROM walks) AS total_walks;

SELECT * FROM customers;
SELECT * FROM walkers;
SELECT * FROM dogs;
SELECT * FROM walks;
