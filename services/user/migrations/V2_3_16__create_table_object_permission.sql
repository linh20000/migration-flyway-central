create table users.object_permission
(
    id            bigserial primary key,
    enterprise_id int8        not null,
    object_id     int8        not null,
    object_name   varchar(50) not null,
    user_id       bigint,
    department_id bigint,
    permissions   varchar[],
    object_owner  boolean     not null default false,
    is_active     boolean     not null default true,
    created_at    timestamp
);

CREATE INDEX object_permission_index
    ON users.object_permission (object_id, object_name, user_id, department_id);


ALTER TABLE users.object_permission
    ADD CONSTRAINT object_permission_unique_user UNIQUE (object_id, object_name, user_id);

ALTER TABLE users.object_permission
    ADD CONSTRAINT object_permission_unique_department UNIQUE (object_id, object_name, department_id);


--travel_schedule user
insert into users.object_permission (enterprise_id, object_id, object_name, user_id, permissions, is_active,
                                     object_owner)
select o.enterprise_id, o.id, 'travel_schedule', o.user_id, array['UPDATE', 'DELETE', 'CHANGE_STATE'], true, true
from users.travel_schedule o
on conflict (object_id, object_name, user_id) do nothing;
--travel_schedule department
insert into users.object_permission (enterprise_id, object_id, object_name, department_id, permissions, is_active,
                                     object_owner)
select o.enterprise_id,
       o.id,
       'travel_schedule',
       m.organizational_structure_id,
       array['UPDATE',
       'DELETE',
       'CHANGE_STATE'], true, true
from users.travel_schedule o inner join users.management_levels m
on m.user_id = o.user_id
    on conflict (object_id, object_name, department_id) do nothing;

