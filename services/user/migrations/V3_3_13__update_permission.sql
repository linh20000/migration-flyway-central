update users.permissions p
set modules = (select modules from users.permission_groups where id = p.group_id);