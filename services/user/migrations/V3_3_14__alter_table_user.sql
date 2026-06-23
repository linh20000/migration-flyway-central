alter table users.users add column is_registered_face boolean default false;
alter table users.users add column registered_faces jsonb default '{}';