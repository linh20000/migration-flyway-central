drop table users.timekeeping;
drop table users.timekeeping_log;

CREATE TABLE users.timekeeping
(
    id                    BIGSERIAL PRIMARY KEY,
    enterprise_id         BIGINT,
    user_id               BIGINT,
    shift_id              BIGINT,
    timekeeping_device_id BIGINT,
    device_name           VARCHAR,
    workplace_id          BIGINT,
    workplace             VARCHAR,
    note                  varchar,
    latitude              DOUBLE PRECISION,
    longitude             DOUBLE PRECISION,
    netwotk_type          VARCHAR(50),
    status                VARCHAR(50),
    network_address       jsonb,
    face_image            TEXT,
    images                JSONB,
    created_at            TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);
