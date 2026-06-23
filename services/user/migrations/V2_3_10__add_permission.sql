INSERT INTO permissions (name, code, group_id)
VALUES ('Quản lý khách hàng', 'd_clients_manage',
        (SELECT id FROM permission_groups WHERE name = 'DATA - Dữ liệu khách hàng'));