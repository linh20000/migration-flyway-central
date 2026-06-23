update users.permission_groups
set modules = ARRAY['iss', 'crm']
where name = 'Tổng quan' and group_id = (select id from users.permission_groups where name = 'CRM');

update users.permission_groups
set sort = 1
where name = 'Kho dữ liệu' and group_id = (select id from users.permission_groups where name = 'CRM') and 'crm' = any(modules);