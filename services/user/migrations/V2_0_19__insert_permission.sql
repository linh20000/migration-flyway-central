-- Chèn dữ liệu vào bảng permissions
INSERT INTO permissions (name, code, group_id)
VALUES ('Xem Phân công công việc', 'd_supplies_view',
        (SELECT id FROM permission_groups WHERE name = 'PRODUCT - Sản phẩm')),
       ('Thêm Phân công công việc', 'd_supplies_create',
        (SELECT id FROM permission_groups WHERE name = 'PRODUCT - Sản phẩm')),
       ('Sửa Phân công công việc', 'd_supplies_update',
        (SELECT id FROM permission_groups WHERE name = 'PRODUCT - Sản phẩm')),
       ('Xóa Phân công công việc', 'd_supplies_delete',
        (SELECT id FROM permission_groups WHERE name = 'PRODUCT - Sản phẩm'));
