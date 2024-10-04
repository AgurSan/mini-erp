-- Insertion de données dans la table users
INSERT INTO users (username, email, password_hash, role) VALUES
('admin_user', 'admin@example.com', 'hashed_password_1', 'admin'),
('manager_user', 'manager@example.com', 'hashed_password_2', 'manager'),
('employee1', 'employee1@example.com', 'hashed_password_3', 'employee'),
('employee2', 'employee2@example.com', 'hashed_password_4', 'employee');

-- Insertion de données dans la table product_categories
INSERT INTO product_categories (name, description) VALUES
('Electronics', 'Electronic devices and accessories'),
('Clothing', 'Apparel and fashion items'),
('Books', 'Printed and digital books'),
('Home & Garden', 'Items for home and garden');

-- Insertion de données dans la table products
INSERT INTO products (name, description, price, stock_quantity, category_id) VALUES
('Smartphone', 'Latest model smartphone', 699.99, 50, 1),
('Laptop', 'High-performance laptop', 1299.99, 30, 1),
('T-shirt', 'Cotton t-shirt', 19.99, 100, 2),
('Jeans', 'Denim jeans', 49.99, 75, 2),
('Novel', 'Bestselling fiction novel', 14.99, 200, 3),
('Cookbook', 'Gourmet recipes', 24.99, 60, 3),
('Plant Pot', 'Ceramic plant pot', 9.99, 150, 4),
('Garden Tools Set', 'Essential garden tools', 39.99, 40, 4);

-- Insertion de données dans la table orders
INSERT INTO orders (user_id, status, total_amount) VALUES
(3, 'pending', 734.97),
(4, 'processing', 1324.98),
(3, 'shipped', 64.98),
(4, 'delivered', 39.99);

-- Insertion de données dans la table order_items
INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 699.99),
(1, 3, 1, 19.99),
(1, 5, 1, 14.99),
(2, 2, 1, 1299.99),
(2, 4, 1, 24.99),
(3, 3, 2, 19.99),
(3, 5, 1, 14.99),
(4, 7, 4, 9.99);

-- Insertion de données dans la table activity_logs
INSERT INTO activity_logs (user_id, action, details) VALUES
(1, 'User Login', '{"ip": "192.168.1.1", "device": "desktop"}'),
(2, 'Product Added', '{"product_id": 1, "quantity": 50}'),
(3, 'Order Placed', '{"order_id": 1, "total": 734.97}'),
(4, 'Profile Updated', '{"field": "email", "old": "old@example.com", "new": "employee2@example.com"}');