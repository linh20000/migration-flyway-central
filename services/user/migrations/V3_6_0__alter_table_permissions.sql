INSERT INTO users.permission_groups(name, code, group_id, modules, sort)
VALUES ('Mẫu hạng mục công việc','crm_setting_work_template',
           (select id from users.permission_groups where code = 'crm_setting')
           ,ARRAY['crm', 'iss'],10);


INSERT INTO users.permissions(name,code,group_id,modules,sort)
VALUES
    ('Thêm mẫu hạng mục công việc','s_work_template_create',
     (select id from users.permission_groups where name = 'Mẫu hạng mục công việc'),
     ARRAY['crm', 'iss'], 1),
    ('Sửa mẫu hạng mục công việc','s_work_template_update',
     (select id from users.permission_groups where name = 'Mẫu hạng mục công việc'),
     ARRAY['crm', 'iss'], 2),
    ('Xem mẫu hạng mục công việc','s_work_template_view',
     (select id from users.permission_groups where name = 'Mẫu hạng mục công việc'),
     ARRAY['crm', 'iss'], 0),
    ('Xóa mẫu hạng mục công việc','s_work_template_delete',
     (select id from users.permission_groups where name = 'Mẫu hạng mục công việc'),
     ARRAY['crm', 'iss'], 3)

;
