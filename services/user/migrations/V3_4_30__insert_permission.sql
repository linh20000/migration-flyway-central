INSERT INTO users.permissions(name, code, group_id, modules, sort)
VALUES ('Thêm PNL', 's_contract_pnl_create',
        (select id from users.permission_groups where code = 'crm_contract'),
        ARRAY['crm', 'iss'], 7),
       ('Sửa PNL', 's_contract_pnl_update',
        (select id from users.permission_groups where code = 'crm_contract'),
        ARRAY['crm', 'iss'], 7),
       ('Xem PNL', 's_contract_pnl_view',
        (select id from users.permission_groups where code = 'crm_contract'),
        ARRAY['crm', 'iss'], 7);