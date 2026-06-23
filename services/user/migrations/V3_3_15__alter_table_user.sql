alter table users.users
add column created_by_user_id bigint;
alter table users.users
add column updated_by_user_id bigint;
alter table users.roles
add column created_by_user_id bigint;
alter table users.roles
add column updated_by_user_id bigint;
alter table users.organizational_structures
add column created_by_user_id bigint;
alter table users.organizational_structures
add column updated_by_user_id bigint;