INSERT INTO users (username, password, name, surname, email)
VALUES ('testuser', 'securepassword', 'John', 'Doe', 'john.doe@example.com');

INSERT INTO asset_types (name)
VALUES ('Stock');

INSERT INTO portfolios (name, user_id)
VALUES ('My Stock Portfolio', 1);

INSERT INTO assets (name, symbol, asset_type_id)
VALUES ('Apple Inc.', 'AAPL', 1),
       ('Microsoft Corporation', 'MSFT', 1),
       ('Alphabet Inc.', 'GOOGL', 1);

INSERT INTO transactions (portfolio_id, asset_id, transaction_type, quantity, price, transaction_date)
VALUES (1, 1, 'BUY', 10, 145.30, '2023-01-01'),
       (1, 2, 'BUY', 15, 299.10, '2023-01-05'),
       (1, 3, 'BUY', 20, 2750.50, '2023-01-10');

INSERT INTO portfolio_statistics (portfolio_id, statistic_date, total_value)
VALUES (1, '2023-01-31', 50000.00),
       (1, '2023-02-28', 52000.00);
