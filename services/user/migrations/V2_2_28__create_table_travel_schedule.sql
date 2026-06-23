CREATE TABLE travel_schedule
(
    id            bigserial PRIMARY KEY,
    enterprise_id bigint      NOT NULL,
    user_id       bigint      NOT NULL,
    address       jsonb      NOT NULL,
    note          varchar,
    created_at    timestamp NOT NULL,
    updated_at    timestamp NOT NULL
);
