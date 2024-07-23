CREATE TABLE roles
(
    id   SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

INSERT INTO roles (name)
VALUES ('ROLE_ADMIN');
INSERT INTO roles (name)
VALUES ('ROLE_USER');
INSERT INTO roles (name)
VALUES ('ROLE_VIEWER');


CREATE TABLE users
(
    id       SERIAL PRIMARY KEY,
    username VARCHAR(50)  NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL,
    name     VARCHAR(100) NOT NULL,
    surname  VARCHAR(100) NOT NULL,
    email    VARCHAR(100) NOT NULL UNIQUE,
    created  TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated  TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    enabled  BOOLEAN      NOT NULL DEFAULT TRUE
);

CREATE INDEX idx_users_username ON users(username);
CREATE INDEX idx_users_email ON users(email);

CREATE TABLE user_roles
(
    user_id INT NOT NULL,
    role_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (role_id) REFERENCES roles (id),
    PRIMARY KEY (user_id, role_id)
);
