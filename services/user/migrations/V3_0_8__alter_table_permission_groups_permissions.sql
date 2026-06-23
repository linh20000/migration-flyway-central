alter table users.permission_groups
    add column modules text[] default ARRAY['iss']::text[];
alter table users.permissions
    add column modules text[] default ARRAY['iss']::text[];