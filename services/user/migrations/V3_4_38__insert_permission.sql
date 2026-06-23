INSERT INTO users.permissions(name, code, group_id, modules, sort)
VALUES ('Xóa hạng mục công việc', 's_contract_work_delete',
        (select id from users.permission_groups where code = 'crm_contract'),
        ARRAY['crm', 'iss'], 6),
       ('Xóa PNL', 's_contract_pnl_delete',
        (select id from users.permission_groups where code = 'crm_contract'),
        ARRAY['crm', 'iss'], 7);