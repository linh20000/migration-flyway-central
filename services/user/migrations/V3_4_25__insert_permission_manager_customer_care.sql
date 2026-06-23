INSERT INTO users.permissions 
    (name, code, group_id, modules, sort) 
VALUES 
    ('Quản lý Chăm sóc khách hàng', 's_client_analysis_management', (select id from users.permission_groups where code = 'crm_client_analysis'), ARRAY['iss','crm'], 0);
