INSERT INTO permissions (name, code, group_id)
VALUES  ('Xem Dữ liệu khách hàng', 's_clients_view',
     (SELECT id FROM permission_groups WHERE name = 'SALE - Khách hàng')),
       ('Sửa Dữ liệu khách hàng', 's_clients_update',
        (SELECT id FROM permission_groups WHERE name = 'SALE - Khách hàng'));