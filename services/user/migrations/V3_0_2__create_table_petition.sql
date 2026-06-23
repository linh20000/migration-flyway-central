-- ngày nghỉ hàng năm
create table users.day_offs
(
    id            bigserial primary key,
    enterprise_id bigint,
    name          varchar,
    day           smallint,
    month         smallint,
    year          smallint,
    paid_leave    boolean,
    is_deleted    boolean default false,
    approved_at   timestamp,
    created_at    timestamp,
    updated_at    timestamp
);

-- ca làm việc
create table users.shifts
(
    id              bigserial primary key,
    enterprise_id   bigint,
    name            varchar(50),
    apply_from      date,
    apply_to        date,
    from_time       time,
    to_time         time,
    break_time_from time,
    break_time_to   time,
    time_zone       varchar,
    is_deleted      boolean default false,
    is_default      boolean default false,
    created_at      timestamp,
    updated_at      timestamp
);

create table users.petitions
(
    id              bigserial primary key,
    name            varchar(50),
    code            varchar(50),
    enterprise_id   bigint,
    approval_id     bigint,
    unit_id         bigint,
    created_user_id bigint,
    department_id   bigint,
    status          varchar(50),
    type            varchar(50),
    is_deleted      boolean default false,
    approved_at     timestamp,
    created_at      timestamp,
    updated_at      timestamp
);

CREATE INDEX p_idx_enterprise_id ON users.petitions (enterprise_id);
CREATE INDEX p_idx_user_id ON users.petitions (created_user_id);

create table users.petition_times
(
    id              bigserial primary key,
    enterprise_id   bigint,
    petition_id     bigint,
    user_id         bigint,
    support_user_id bigint,
    shift_id        bigint,
    status          varchar(50),
    regime          varchar(50),
    note            varchar,
    approval_note   varchar,
    files            varchar[],
    from_time       timestamp,
    to_time         timestamp,
    duration        integer
);