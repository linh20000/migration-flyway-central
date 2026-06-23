ALTER TABLE users.timekeeping
    ADD COLUMN type VARCHAR(20);

CREATE TABLE users.timekeeping_entries
(
    id                      BIGSERIAL PRIMARY KEY,
    enterprise_id           BIGINT                              NOT NULL,
    user_id                 BIGINT                              NOT NULL,
    keeping_date            DATE                                NOT NULL,
    checkin_time            TIMESTAMP,
    checkin_timekeeping_id  BIGINT,
    checkout_time           TIMESTAMP,
    checkout_timekeeping_id BIGINT,
    status                  VARCHAR(255)                        NOT NULL,
    shift_id                BIGINT,
    shift                   JSONB,
    duration_be_late        INTEGER,
    duration_back_early     INTEGER,
    duration_work           INTEGER,
    duration_recognize      INTEGER,
    duration_overtime       INTEGER,
    note                    VARCHAR,
    is_deleted              BOOLEAN                             NOT NULL DEFAULT FALSE,
    created_at              TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at              TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);
