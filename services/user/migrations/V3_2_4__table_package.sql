create table users.package
(
    id          serial primary key,
    name        varchar,
    code        varchar,
    is_active   boolean,
    is_deleted  boolean,
    description varchar,
    modules     TEXT[],
    type        varchar(50),
    created_at  timestamp,
    updated_at  timestamp
);

create table users.package_price
(
    id              serial primary key,
    package_id      integer,
    validity_period integer,
    price           bigint,
    is_active       boolean,
    is_deleted      boolean,
    created_at      timestamp,
    updated_at      timestamp
);

create table users.rel_package_permission
(
    package_id    integer,
    permission_id integer,
    PRIMARY KEY (package_id, permission_id)
);

create table users.enterprise_package
(
    id                 bigserial primary key,
    package_id         integer,
    package_price_id   integer,
    subcriber_id       bigint,
    contact_people_ids bigint[],
    price              bigint,
    validity_period    integer,
    active_at          timestamp,
    status             varchar(50),
    type               varchar(50),
    created_at         timestamp,
    updated_at         timestamp
);

create table users.package_transaction
(
    id            bigserial primary key,
    package_id    integer,
    enterprise_id bigint,
    subcriber_id  bigint,
    approver_id   bigint,
    status        varchar(50),
    price         bigint,
    approved_at   timestamp,
    create_at     timestamp,
    updated_at    timestamp
);

create table users.package_transaction_log
(
    id                     bigserial primary key,
    package_transaction_id bigint,
    changer_id             bigint,
    value                  jsonb,
    preValue               jsonb,
    field_change           jsonb,
    reason                 varchar,
    created_at             timestamp
);