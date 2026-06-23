update users.permission_groups
set modules = ARRAY['iss', 'crm']
where 'crm' = any(modules);

update users.permissions
set modules = ARRAY['iss', 'crm']
where 'crm' = any(modules);