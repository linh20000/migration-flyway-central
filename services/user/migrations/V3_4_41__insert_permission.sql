INSERT INTO users.permissions(name, code, group_id, modules, sort)
VALUES ('Xem quy mô', 'd_enterprise_scale_view',
        (select id from users.permission_groups where code = 'crm_setting_client_scale'),
        ARRAY['crm', 'iss'], 1);
