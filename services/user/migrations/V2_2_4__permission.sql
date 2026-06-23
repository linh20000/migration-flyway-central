INSERT INTO permission_groups (name)
VALUES ('SALE - Khách hàng');

-- Chèn dữ liệu vào bảng permissions
INSERT INTO permissions (name, code, group_id)
VALUES  ('Thêm khách hàng', 's_clients_create',
        (SELECT id FROM permission_groups WHERE name = 'SALE - Khách hàng'));