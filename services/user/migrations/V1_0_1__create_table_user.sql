CREATE TYPE gender AS ENUM (
 'MALE',
 'FEMALE');

CREATE TYPE user_status AS ENUM (
 'BLOCK',
 'ACTIVE',
 'INACTIVE');

create table users (
    id bigserial primary key,
    name varchar,
    enterprise_id bigint not null,
    sso_id bigint,
    phone varchar,
    email varchar,
    gender gender,
    address jsonb,
    status user_status not null,
    created_at timestamp not null,
    updated_at timestamp not null
-- add any additional constraints, indexes, or foreign keys here
);
