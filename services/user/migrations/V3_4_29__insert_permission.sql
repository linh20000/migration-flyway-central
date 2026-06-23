INSERT INTO users.permissions(name, code, group_id, modules, sort)
VALUES ('Thêm hạng mục công việc', 's_contract_work_create',
        (select id from users.permission_groups where code = 'crm_contract'),
        ARRAY['crm', 'iss'], 6),
       ('Sửa hạng mục công việc', 's_contract_work_update',
        (select id from users.permission_groups where code = 'crm_contract'),
        ARRAY['crm', 'iss'], 6),
       ('Xem hạng mục công việc', 's_contract_work_view',
        (select id from users.permission_groups where code = 'crm_contract'),
        ARRAY['crm', 'iss'], 6);