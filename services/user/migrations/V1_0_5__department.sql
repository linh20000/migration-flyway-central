CREATE TABLE permissions (
    id bigserial primary key ,
    name varchar,
    code varchar unique not null
);

CREATE TABLE roles (
    id bigserial primary key ,
    name varchar,
    enterprise_id          int8 NOT NULL
);

CREATE TABLE rel_role_permissions (
    role_id         int8 NOT NULL,
    permission_id          int8 NOT NULL,
    PRIMARY KEY (role_id, permission_id)
);

CREATE TABLE rel_user_roles (
    role_id         int8 NOT NULL,
    user_id          int8 NOT NULL,
    PRIMARY KEY (role_id, user_id)
);

CREATE TABLE departments (
    id bigserial primary key ,
    name varchar,
    code varchar unique ,
    enterprise_id          int8 NOT NULL,
    created_at      timestamp NOT NULL,
    updated_at      timestamp NOT NULL
);

CREATE TABLE rel_department_roles (
    role_id         int8 NOT NULL,
    department_id          int8 NOT NULL,
    PRIMARY KEY (role_id, department_id)
);

CREATE TABLE rel_user_departments (
  user_id         int8 NOT NULL,
  department_id          int8 NOT NULL,
  PRIMARY KEY (user_id, department_id)
);