DROP TABLE IF EXISTS restaurant;
CREATE TABLE IF NOT EXISTS restaurant(
    name TEXT,
    neighbourhood TEXT,
    cuisine TEXT,
    review REAL,
    price TEXT,
    health TEXT
);

INSERT INTO restaurant(name, neighbourhood, cuisine, review, price, health)
VALUES
('Candy Corner', 'Downtown', 'Dessert', 3.9, '$$', 'Fine'),
('Pizza & Pasta', 'Midtown', 'Italian', 4.3, '$$$', 'Great'),
('China To-Go!', 'Chinatown', 'Chinese', 4.0, '$', 'Great'),
('Naan Stop', 'Midtown', 'Indian', 4.2, '$$', 'Great'),
('Pancakes for People', 'Midtown', 'Dessert', 4.6, '$$$', 'Great'),
('Sakura Garden', 'Chinatown', 'Japanese', 3.7, '$$$', 'Fine'),
('Athens', 'Downtown', 'Greek', 3.9, '$$', 'Fine'),
('Pasta Paradise', 'Chinatown', 'Italian', 4.0, '$', '');

SELECT * FROM restaurant;
SELECT neighbourhood FROM restaurant;
SELECT DISTINCT neighbourhood FROM restaurant;
SELECT DISTINCT cuisine FROM restaurant;
SELECT * FROM restaurant WHERE cuisine = 'Chinese';
SELECT name, review FROM restaurant WHERE review >= 4.0;
SELECT name, price FROM restaurant WHERE cuisine = 'Italian' AND price != '$';
SELECT name, price FROM restaurant WHERE price = '$$$';
SELECT * FROM restaurant WHERE name LIKE '%Candy%';
SELECT name, neighbourhood FROM restaurant WHERE neighbourhood = 'Downtown';
SELECT * FROM restaurant WHERE health = '';
SELECT * FROM restaurant ORDER BY review DESC LIMIT 4;