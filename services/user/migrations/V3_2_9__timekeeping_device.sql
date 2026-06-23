CREATE TABLE users.timekeeping_otp
(
    id              BIGSERIAL PRIMARY KEY,
    enterprise_id   BIGINT  NOT NULL,
    created_user_id BIGINT  NOT NULL,
    user_id         BIGINT  NOT NULL,
    otp_code        VARCHAR(15),
    is_used         BOOLEAN NOT NULL DEFAULT FALSE,
    is_deleted      BOOLEAN NOT NULL DEFAULT FALSE,
    created_at      TIMESTAMP        DEFAULT CURRENT_TIMESTAMP,
    updated_at      TIMESTAMP        DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE users.timekeeping_device
(
    id                BIGSERIAL PRIMARY KEY,
    enterprise_id     BIGINT  NOT NULL,
    user_id           BIGINT  NOT NULL,
    hash_device_id    VARCHAR(255),
    device_name       VARCHAR(255),
    hash_device_token VARCHAR(255),
    status            VARCHAR(50),
    method            VARCHAR(50),
    client_confirmed  BOOLEAN          DEFAULT FALSE,
    is_deleted        BOOLEAN NOT NULL DEFAULT FALSE,
    created_at        TIMESTAMP        DEFAULT CURRENT_TIMESTAMP,
    updated_at        TIMESTAMP        DEFAULT CURRENT_TIMESTAMP
);


CREATE INDEX idx_timekeeping_device
    ON users.timekeeping_device (user_id, enterprise_id, hash_device_token, client_confirmed, is_deleted);
