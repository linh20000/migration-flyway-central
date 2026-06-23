CREATE TYPE rank AS ENUM (
 'LEADER',
 'MANAGE',
 'STAFF');

alter table users add column rank rank;
alter table users add column manage_id bigint;
