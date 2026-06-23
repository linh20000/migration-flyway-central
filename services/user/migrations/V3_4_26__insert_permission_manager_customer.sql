INSERT INTO users.permissions 
    (name, code, group_id, modules, sort) 
VALUES 
    ('Quản lý khách hàng', 's_customer_management', (select id from users.permission_groups where code = 'crm_s_client'), ARRAY['iss','crm'], 0);
