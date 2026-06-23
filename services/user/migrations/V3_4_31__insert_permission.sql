INSERT INTO users.permission_groups(name, code, group_id, modules, sort)
VALUES ('Mẫu PNL', 'crm_setting_pnl_template',
        (select id from users.permission_groups where code = 'crm_setting'),
        ARRAY['crm', 'iss'], 9);

INSERT INTO users.permissions(name, code, group_id, modules, sort)
VALUES ('Xem mẫu PNL', 's_pnl_template_view',
        (select id from users.permission_groups where code = 'crm_setting_pnl_template'),
        ARRAY['crm', 'iss'], 0),
       ('Thêm mẫu PNL', 's_pnl_template_create',
        (select id from users.permission_groups where code = 'crm_setting_pnl_template'),
        ARRAY['crm', 'iss'], 1),
       ('Sửa mẫu PNL', 's_pnl_template_update',
        (select id from users.permission_groups where code = 'crm_setting_pnl_template'),
        ARRAY['crm', 'iss'], 2),
       ('Xóa mẫu PNL', 's_pnl_template_delete',
        (select id from users.permission_groups where code = 'crm_setting_pnl_template'),
        ARRAY['crm', 'iss'], 3);