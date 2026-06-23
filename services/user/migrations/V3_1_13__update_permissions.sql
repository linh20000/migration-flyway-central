update users.permissions
set modules = ARRAY['crm', 'iss']
where code = 's_entire_approval';

update users.permission_groups
set modules = ARRAY['crm', 'iss']
where name = 'INDIVIDUAL - Quản lý cá nhân';