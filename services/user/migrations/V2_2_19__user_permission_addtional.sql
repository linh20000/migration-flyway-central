alter table users.user_permission_additional drop column additional;
alter table users.user_permission_additional drop column ignore;
alter table users.user_permission_additional add column additional_ids bigint[];
alter table users.user_permission_additional add column ignore_ids bigint[];