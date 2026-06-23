CREATE TABLE timekeeping
(
    id               bigserial not null primary key,
    enterprise_id    bigint    not null,
    user_id          bigint    not null,
    keeping_date     date,

    checkin_address  jsonb,
    checkin_image    varchar[],
    checkin_time     timestamp,
    checkin_meta     jsonb,

    checkout_address jsonb,
    checkout_images  varchar[],
    checkout_time    timestamp,
    checkout_meta    jsonb,
    status           varchar(50),

    note             varchar,
    is_deleted       bool      not null default false,
    created_at       timestamp not null,
    updated_at       timestamp not null
);

CREATE TABLE timekeeping_log
(
    id            bigserial not null primary key,
    enterprise_id bigint    not null,
    user_id       bigint    not null,
    keeping_date  date,
    address       jsonb     not null,
    images        varchar[],
    ip_address    varchar,
    device        varchar,
    metadata      jsonb,
    created_at    timestamp not null
);
