create table users.petition_reason
(
    id            bigserial primary key,
    enterprise_id bigint,
    name          varchar,
    code          varchar(50),
    type          varchar(50),
    mode          varchar(50),
    salary_rate   double precision,
    is_active     boolean default true,
    is_deleted    boolean default false,
    created_at    timestamp,
    updated_at    timestamp
);