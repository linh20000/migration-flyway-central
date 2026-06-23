create type status_base AS ENUM ('PENDING','ACTIVE','INACTIVE','DELETED');
create type gender AS ENUM ('MALE','FEMALE');
create type wallet_log_type AS ENUM ('PLUS','MINUS');
create type wallet_log_source AS ENUM ('ORDER','WITHDRAW','DEPOSIT');
create type permisison AS ENUM ('PRODUCT_EDITOR');
create type batch_state AS ENUM ('PENDING','PACKED','SHIPPING');
create type batch_type AS ENUM ('DEMISE','RETURN');
create type member_state AS ENUM ('ACTIVE','LOCK','PENDING');

create table users (
    id serial primary key ,
    keycloak_id varchar (50) unique ,
    name varchar (50) ,
    email varchar (50) unique ,
    phone varchar (50) unique,
    birthday date,
    username varchar (50) unique,
    sex gender,
    state status_base default 'PENDING',
    password varchar ,
    is_admin boolean default false ,
    is_seller boolean default false ,
    created_at timestamp without time zone default current_timestamp,
    updated_at timestamp without time zone default current_timestamp
);

create table user_role (
    id serial primary key ,
    user_id int ,
    role permisison,
    created_at timestamp without time zone default current_timestamp
);

create table wallet (
    id int primary key ,
    balance bigint not null default 0,
    deposit_balance bigint not null default 0,
    state status_base,
    created_at timestamp without time zone default current_timestamp,
    updated_at timestamp without time zone default current_timestamp
);

create table wallet_log (
    id bigserial primary key ,
    wallet_id int ,
    value bigint ,
    transaction_code varchar (50),
    type wallet_log_source,
    type_log wallet_log_type,
    matadata jsonb,
    note varchar,
    balance bigint not null,
    pre_balance bigint not null,
    deposit_balance bigint not null,
    pre_deposit_balance bigint not null,
    actor_id int,
    created_at timestamp without time zone default current_timestamp,
    updated_at timestamp without time zone default current_timestamp
);

create table user_address (
    id serial primary key ,
    address varchar (50),
    ward_id int ,
    district_id int ,
    province_id int ,
    is_default boolean default false ,
    created_at timestamp without time zone default current_timestamp,
    updated_at timestamp without time zone default current_timestamp
);

create table agency (
    id serial primary key ,
    name varchar,
    ward_id int ,
    district_id int ,
    province_id int ,
    user_id int ,
    created_at timestamp without time zone default current_timestamp,
    updated_at timestamp without time zone default current_timestamp
);

create table batch (
    id serial primary key ,
    code varchar,
    agency_id int ,
    state batch_state ,
    total_product int ,
    created_at timestamp without time zone default current_timestamp,
    updated_at timestamp without time zone default current_timestamp
);

create table batch_detail (
    id serial primary key ,
    product_id int ,
    sub_product_id int ,
    batch_id int ,
    deposit bigint ,
    rental_fee bigint ,
    user_id int ,
    type batch_type ,
    created_at timestamp without time zone default current_timestamp,
    updated_at timestamp without time zone default current_timestamp
);

create table member (
    id int primary key ,
    member_code varchar (50),
    people_id varchar (50),
    student_code varchar (50),
    registration_date timestamp without time zone,
    expiration_date timestamp without time zone,
    career varchar (50),
    state member_state,
    created_at timestamp without time zone default current_timestamp,
    updated_at timestamp without time zone default current_timestamp
);

create table province (
    id int primary key ,
    name varchar (50),
    level varchar (50)
);

create table district (
    id int primary key ,
    name varchar (50),
    level varchar (50),
    province_id int
);

create table ward (
    id int primary key ,
    name varchar (50),
    level varchar (50),
    province_id int,
    district_id int
);