-- noinspection SqlNoDataSourceInspectionForFile

drop table users.shifts;

create table users.shifts
(
    id                bigserial primary key,
    enterprise_id     bigint,
    name              varchar(50),
    code              varchar(50),
    regular_pay_rate  double precision,
    holiday_pay_rate  double precision,
    free_day_pay_rate double precision,
    note              varchar,
    is_active         boolean default true,
    is_deleted        boolean default false,
    created_at        timestamp,
    updated_at        timestamp
);

create table users.shift_time
(
    id                   bigserial primary key,
    enterprise_id        bigint not null,
    shift_id             bigint not null,
    apply_from_month     smallint,
    apply_from_day       smallint,
    apply_to_month       smallint,
    apply_to_day         smallint,
    work_time_from       time   not null,
    work_time_to         time   not null,
    break_time_from      time,
    break_time_to        time,
    checkin_period_from  time,
    checkin_period_to    time,
    checkout_period_from time,
    checkout_period_to   time,
    note                 varchar(50),
    created_at           timestamp,
    updated_at           timestamp
);

create table users.rel_shift_department
(
    shift_id      bigint,
    department_id bigint,
    CONSTRAINT rel_shift_department_pkey PRIMARY KEY (shift_id, department_id)
);