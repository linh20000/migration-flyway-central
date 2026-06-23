INSERT INTO permission_groups (name)
VALUES ('SALE - Cài đặt mức hoa hồng');

INSERT INTO permissions (name, code, group_id)
VALUES
    ('Thêm mức hoa hồng', 's_rose_group_create', (SELECT id FROM permission_groups WHERE name = 'SALE - Cài đặt mức hoa hồng')),
    ('Sửa mức hoa hồng', 's_rose_group_update', (SELECT id FROM permission_groups WHERE name = 'SALE - Cài đặt mức hoa hồng')),
    ('Xoá mức hoa hồng', 's_rose_group_delete', (SELECT id FROM permission_groups WHERE name = 'SALE - Cài đặt mức hoa hồng'));


