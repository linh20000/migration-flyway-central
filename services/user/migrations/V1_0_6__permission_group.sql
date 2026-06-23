CREATE TABLE permission_groups (
    id bigserial primary key ,
    name varchar
);

alter table permissions add column group_id bigint;
