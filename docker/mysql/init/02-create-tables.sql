USE docker_db;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL
);

INSERT INTO users (first_name, last_name, email, created_at, updated_at) VALUES
('Amit', 'Sharma', 'amit.sharma@example.com', now(), now()),
('Priya', 'Singh', 'priya.singh@example.com', now(), now()),
('Rahul', 'Verma', 'rahul.verma@example.com', now(), now()),
('Anjali', 'Patel', 'anjali.patel@example.com', now(), now()),
('Vikram', 'Gupta', 'vikram.gupta@example.com', now(), now());

-- SELECT * FROM users;
-- SELECT * FROM users WHERE created_at > '2023-01-01';
-- SELECT * FROM users ORDER BY last_name ASC;
-- SELECT * FROM users LIMIT 5;

-- SELECT first_name, last_name, email FROM users;

-- INSERT INTO users (first_name, last_name, email, created_at, updated_at) VALUES
-- ('Ravi', 'Kumar', 'ravi.kumar@example.com', '2023-06-15', '2023-06-15');

-- UPDATE users
-- SET email = 'ravi.kumar123@example.com'
-- WHERE first_name = 'Ravi' AND last_name = 'Kumar';

-- DELETE FROM users
-- WHERE first_name = 'Ravi' AND last_name = 'Kumar';