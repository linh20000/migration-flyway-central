create table users.overtime_petition
(
    id              bigserial primary key,
    name            varchar,
    code            varchar(50),
    enterprise_id   bigint,
    approval_id     bigint,
    created_user_id bigint,
    department_id   bigint,
    parent_id       bigint,
    unit_name       varchar,
    reason          varchar,
    target          varchar,
    note            varchar,
    status          varchar(50),
    type            varchar(50),
    is_deleted      boolean default false,
    approved_at     timestamp,
    created_at      timestamp,
    updated_at      timestamp
);

CREATE INDEX overtime_petition_idx_enterprise_id ON users.overtime_petition (enterprise_id);
CREATE INDEX overtime_petition_idx_user_id ON users.overtime_petition (created_user_id);

create table users.overtime_petition_time
(
    id                   bigserial primary key,
    overtime_petition_id bigint not null,
    shift_id             bigint,
    time_type            varchar(50),
    status               varchar(50),
    type                 varchar(50),
    date                 date,
    from_time            timestamp,
    to_time              timestamp,
);

create table users.overtime_petition_project
(
    id                   bigserial primary key,
    overtime_petition_id bigint,
    project_id           bigint,
    created_at           timestamp,
    updated_at           timestamp
);

create table users.overtime_petition_work_plan
(
    id                   bigserial primary key,
    overtime_petition_id bigint,
    work_plan_id         bigint,
    created_at           timestamp,
    updated_at           timestamp
);