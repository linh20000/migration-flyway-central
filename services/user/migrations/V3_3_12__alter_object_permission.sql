ALTER TABLE users.object_permission drop constraint object_permission_unique_department;
ALTER TABLE users.object_permission drop constraint object_permission_unique_user;

update users.object_permission set department_id = -1 where department_id is null;
update users.object_permission set user_id = -1 where user_id is null;

ALTER TABLE users.object_permission
    ADD CONSTRAINT object_permission_key_unique UNIQUE (object_id, object_name, user_id, department_id);