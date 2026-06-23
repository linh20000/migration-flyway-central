create table users.levels
(
    id            bigserial primary key,
    name          varchar,
    enterprise_id int8,
    level         int,
    created_at    timestamp,
    updated_at    timestamp
);

alter table users.users
    add column level_id bigint;