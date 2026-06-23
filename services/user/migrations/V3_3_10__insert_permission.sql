INSERT INTO users.permissions (name, code, group_id, modules)
values('Nhập khách hàng', 's_clients_import', (select id from users.permission_groups where code = 'crm_s_client'), ARRAY['iss', 'crm']);