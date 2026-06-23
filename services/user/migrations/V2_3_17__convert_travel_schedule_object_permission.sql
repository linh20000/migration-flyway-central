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

