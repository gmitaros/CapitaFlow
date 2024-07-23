CREATE TABLE portfolios
(
    id      SERIAL PRIMARY KEY,
    name    VARCHAR(100) NOT NULL,
    user_id INT          NOT NULL,
    created TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users (id)
);

CREATE INDEX idx_portfolios_user_id ON portfolios(user_id);
CREATE INDEX idx_portfolios_name ON portfolios(name);

CREATE TABLE asset_types
(
    id   SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE INDEX idx_asset_types_name ON asset_types(name);

CREATE TABLE assets
(
    id            SERIAL PRIMARY KEY,
    name          VARCHAR(100) NOT NULL,
    symbol        VARCHAR(10)  NOT NULL,
    asset_type_id INT          NOT NULL,
    FOREIGN KEY (asset_type_id) REFERENCES asset_types (id)
);

CREATE INDEX idx_assets_name ON assets(name);
CREATE INDEX idx_assets_symbol ON assets(symbol);