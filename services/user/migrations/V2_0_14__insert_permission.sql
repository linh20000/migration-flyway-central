INSERT INTO permission_groups (name)
VALUES ('DATA - Cài đặt phân dữ liệu'),
('DATA - Quy mô');
-- Chèn dữ liệu vào bảng permissions
INSERT INTO permissions (name, code, group_id)
VALUES
       ('Xem Cài đặt phân dữ liệu', 'd_setting_allocation_view',
        (SELECT id FROM permission_groups WHERE name = 'DATA - Cài đặt phân dữ liệu')),
       ('Thêm Cài đặt phân dữ liệu', 'd_setting_allocation_create',
        (SELECT id FROM permission_groups WHERE name = 'DATA - Cài đặt phân dữ liệu')),
       ('Sửa Cài đặt phân dữ liệu', 'd_setting_allocation_update',
        (SELECT id FROM permission_groups WHERE name = 'DATA - Cài đặt phân dữ liệu')),
       ('Xóa Cài đặt phân dữ liệu', 'd_setting_allocation_delete',
        (SELECT id FROM permission_groups WHERE name = 'DATA - Cài đặt phân dữ liệu')),

       ('Xem Quy mô', 'd_enterprise_scale_view',
        (SELECT id FROM permission_groups WHERE name = 'DATA - Cài đặt phân dữ liệu')),
       ('Thêm Quy mô', 'd_enterprise_scale_create',
        (SELECT id FROM permission_groups WHERE name = 'DATA - Quy mô')),
       ('Sửa Quy mô', 'd_enterprise_scale_update',
        (SELECT id FROM permission_groups WHERE name = 'DATA - Quy mô')),
       ('Xóa Quy mô', 'd_enterprise_scale_delete',
        (SELECT id FROM permission_groups WHERE name = 'DATA - Quy mô'));