CREATE TABLE users.timekeeping_otp_verify
(
    id             BIGSERIAL PRIMARY KEY,
    enterprise_id  BIGINT  NOT NULL,
    user_id        BIGINT  NOT NULL,
    otp_code       VARCHAR(100),
    timekeeping_id BIGINT,
    is_used        BOOLEAN DEFAULT FALSE,
    expire_time    TIMESTAMP NOT NULL,
    is_deleted     BOOLEAN NOT NULL DEFAULT FALSE,
    created_at     TIMESTAMP        DEFAULT CURRENT_TIMESTAMP,
    updated_at     TIMESTAMP        DEFAULT CURRENT_TIMESTAMP
);
