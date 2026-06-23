delete
from permission_groups
where name in ('SETTING - Tài khoản Call Senter');
delete
from permissions
where code in (
               'setting_call_senter_create',
               'setting_call_senter_update',
               'setting_call_senter_delete',
               'setting_call_senter_change_state',
               'setting_call_senter_view'
    );
-- Chèn dữ liệu vào bảng permission_groups
INSERT INTO permission_groups (name)
VALUES ('SETTING - Tài khoản call center');

-- Chèn dữ liệu vào bảng permissions
INSERT INTO permissions (name, code, group_id)
VALUES ('Thêm Tài khoản call center', 's_call_center_create',
        (SELECT id FROM permission_groups WHERE name = 'SETTING - Tài khoản call enter')),
       ('Sửa Tài khoản call center', 's_call_center_update',
        (SELECT id FROM permission_groups WHERE name = 'SETTING - Tài khoản call enter')),
       ('Xóa Tài khoản call center', 's_call_center_delete',
        (SELECT id FROM permission_groups WHERE name = 'SETTING - Tài khoản call enter')),
       ('Xem Tài khoản call center', 's_call_center_view',
        (SELECT id FROM permission_groups WHERE name = 'SETTING - Tài khoản call center'));