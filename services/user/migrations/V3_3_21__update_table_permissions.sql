update users.permission_groups
set modules = ARRAY['iss', 'crm']
where modules = ARRAY['iss'];

update users.permissions p
set modules = (select modules from users.permission_groups pg where pg.id = p.group_id);