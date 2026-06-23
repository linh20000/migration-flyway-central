delete
from permissions
where code in (
               's_call_center_create',
               's_call_center_update',
               's_call_center_delete',
               's_call_center_view'
    );

-- Chèn dữ liệu vào bảng permissions
INSERT INTO permissions (name, code, group_id)
VALUES ('Thêm Tài khoản call center', 's_call_center_create',
        (SELECT id FROM permission_groups WHERE name = 'SETTING - Tài khoản call center')),
       ('Sửa Tài khoản call center', 's_call_center_update',
        (SELECT id FROM permission_groups WHERE name = 'SETTING - Tài khoản call center')),
       ('Xóa Tài khoản call center', 's_call_center_delete',
        (SELECT id FROM permission_groups WHERE name = 'SETTING - Tài khoản call center')),
       ('Xem Tài khoản call center', 's_call_center_view',
        (SELECT id FROM permission_groups WHERE name = 'SETTING - Tài khoản call center'));