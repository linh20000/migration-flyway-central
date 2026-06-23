CREATE TABLE api_keys
(
    id              BIGSERIAL PRIMARY KEY,
    name            VARCHAR(200) NOT NULL,
    enterprise_id   BIGINT       NOT NULL,
    user_id         BIGINT       NOT NULL,
    secret_key      varchar      NOT NULL,
    permissions     VARCHAR[],
    status          varchar(30)  NOT NULL,
    expiration_date TIMESTAMP    NOT NULL,
    is_deleted      boolean      not null default false,
    created_at      TIMESTAMP    NOT NULL
);