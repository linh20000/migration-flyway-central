CREATE TABLE users.workplaces
(
    id            BIGSERIAL PRIMARY KEY,
    enterprise_id BIGINT,
    name          VARCHAR(255),
    code          VARCHAR(255),
    latitude      DOUBLE PRECISION,
    longitude     DOUBLE PRECISION,
    bssid         TEXT[], -- Mảng chuỗi
    is_active     BOOLEAN,
    is_deleted    BOOLEAN   DEFAULT FALSE,
    created_at    TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at    TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
