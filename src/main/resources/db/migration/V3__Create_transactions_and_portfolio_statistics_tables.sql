CREATE TABLE transactions
(
    id               SERIAL PRIMARY KEY,
    portfolio_id     INT            NOT NULL,
    asset_id         INT            NOT NULL,
    transaction_type VARCHAR(10)    NOT NULL,
    quantity         DECIMAL(20, 8) NOT NULL,
    price            DECIMAL(20, 8) NOT NULL,
    transaction_date DATE           NOT NULL,
    FOREIGN KEY (portfolio_id) REFERENCES portfolios (id),
    FOREIGN KEY (asset_id) REFERENCES assets (id)
);

CREATE INDEX idx_transactions_portfolio_id ON transactions(portfolio_id);
CREATE INDEX idx_transactions_asset_id ON transactions(asset_id);
CREATE INDEX idx_transactions_transaction_date ON transactions(transaction_date);

CREATE TABLE portfolio_statistics
(
    id             SERIAL PRIMARY KEY,
    portfolio_id   INT            NOT NULL,
    statistic_date DATE           NOT NULL,
    total_value    DECIMAL(20, 8) NOT NULL,
    FOREIGN KEY (portfolio_id) REFERENCES portfolios (id)
);


CREATE INDEX idx_portfolio_statistics_portfolio_id ON portfolio_statistics(portfolio_id);
CREATE INDEX idx_portfolio_statistics_statistic_date ON portfolio_statistics(statistic_date);
