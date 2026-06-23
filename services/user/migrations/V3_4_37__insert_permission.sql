INSERT INTO users.permission_groups(name, code, group_id, modules, sort)
VALUES ('Quy trình làm việc', 'crm_setting_process',
        (select id from users.permission_groups where code = 'crm_setting'),
        ARRAY['crm', 'iss'], 9);

INSERT INTO users.permissions(name, code, group_id, modules, sort)
VALUES ('Xem quy trình làm việc', 'd_process_view',
        (select id from users.permission_groups where code = 'crm_setting_process'),
        ARRAY['crm', 'iss'], 0),
       ('Thêm quy trình làm việc', 'd_process_create',
        (select id from users.permission_groups where code = 'crm_setting_process'),
        ARRAY['crm', 'iss'], 1),
       ('Sửa quy trình làm việc', 'd_process_update',
        (select id from users.permission_groups where code = 'crm_setting_process'),
        ARRAY['crm', 'iss'], 2),
       ('Xóa quy trình làm việc', 'd_process_delete',
        (select id from users.permission_groups where code = 'crm_setting_process'),
        ARRAY['crm', 'iss'], 3);