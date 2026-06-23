create schema if not exists enterprise;

CREATE TABLE if not exists enterprise.enterprises
(
    id              bigserial NOT NULL primary key,
    "name"          varchar   NOT NULL,
    user_id         int8 NULL,
    sso_id          int8      NOT NULL,
    num_branch      int4 NULL,
    owner_name      varchar(255) NULL,
    owner_phone     varchar(20) NULL,
    address         jsonb NULL,
    logo            varchar(255) NULL,
    business_number varchar(255) NULL,
    hotline         varchar(255) NULL,
    email           varchar(255) NULL,
    website         varchar(255) NULL,
    created_at      timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at      timestamp NULL DEFAULT CURRENT_TIMESTAMP
);