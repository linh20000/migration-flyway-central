-- Chèn dữ liệu vào bảng permission_groups
INSERT INTO permission_groups (name)
VALUES ('SALE - Dữ liệu khách hàng');

-- Chèn dữ liệu vào bảng permissions
INSERT INTO permissions (name, code, group_id)
VALUES ('Xem Dữ liệu khách hàng', 's_clients_view',
        (SELECT id FROM permission_groups WHERE name = 'SALE - Dữ liệu khách hàng')),
       ('Thêm Dữ liệu khách hàng', 's_clients_create',
        (SELECT id FROM permission_groups WHERE name = 'SALE - Dữ liệu khách hàng')),
       ('Sửa Dữ liệu khách hàng', 's_clients_update',
        (SELECT id FROM permission_groups WHERE name = 'SALE - Dữ liệu khách hàng')),
       ('Xoá Dữ liệu khách hàng', 's_clients_delete',
        (SELECT id FROM permission_groups WHERE name = 'SALE - Dữ liệu khách hàng'));

INSERT INTO permission_groups (name)
VALUES ('MARKETING - Dữ liệu khách hàng');

-- Chèn dữ liệu vào bảng permissions
INSERT INTO permissions (name, code, group_id)
VALUES ('Xem Dữ liệu khách hàng', 'm_clients_view',
        (SELECT id FROM permission_groups WHERE name = 'MARKETING - Dữ liệu khách hàng')),
       ('Thêm Dữ liệu khách hàng', 'm_clients_create',
        (SELECT id FROM permission_groups WHERE name = 'MARKETING - Dữ liệu khách hàng')),
       ('Sửa Dữ liệu khách hàng', 'm_clients_update',
        (SELECT id FROM permission_groups WHERE name = 'MARKETING - Dữ liệu khách hàng')),
       ('Xoá Dữ liệu khách hàng', 'm_clients_delete',
        (SELECT id FROM permission_groups WHERE name = 'MARKETING - Dữ liệu khách hàng'));
