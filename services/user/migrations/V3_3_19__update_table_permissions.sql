update users.permission_groups
set modules = ARRAY['crm']
where name = 'Duyệt' and code = 'setting_approval';

update users.permissions p
set modules = (select modules from users.permission_groups pg where pg.id = p.group_id);