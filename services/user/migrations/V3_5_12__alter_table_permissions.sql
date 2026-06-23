update users.permissions set sort = 3 where code = 'setting_user_change_state';
update users.permissions set sort = 0 where code = 's_approval_entire';
insert into users.permissions(name,code,group_id,modules,sort)
values
    ('Xuất dữ liệu tài khoản','setting_user_export',
     (select id from users.permission_groups where code = 'setting_user'),
     ARRAY['crm', 'iss'], 4)