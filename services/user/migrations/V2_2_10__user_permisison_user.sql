delete from permission_groups where name in ('SALE - Người thực hiện', 'MARKETING - Người thực hiện');
delete from permissions where code in ('s_implementers_create',
    's_implementers_update',
    's_implementers_delete',
    'm_implementers_create',
    'm_implementers_update',
    'm_implementers_delete');
-- Chèn dữ liệu vào bảng permission_groups
INSERT INTO permission_groups (name) VALUES
('SALE - Cuộc gọi'),
('SETTING - Tài khoản Call Senter');

-- Chèn dữ liệu vào bảng permissions
INSERT INTO permissions (name, code, group_id) VALUES

('Thêm Cuộc gọi', 's_call_create', (SELECT id FROM permission_groups WHERE name = 'SALE - Cuộc gọi')),
('Sửa Lịch sử cuộc gọi', 's_call_history_update', (SELECT id FROM permission_groups WHERE name = 'SALE - Cuộc gọi')),
('Xem Lịch sử cuộc gọi', 's_call_history', (SELECT id FROM permission_groups WHERE name = 'SALE - Cuộc gọi')),

('Thêm Tài khoản Call Senter', 'setting_call_senter_create', (SELECT id FROM permission_groups WHERE name = 'SETTING - Tài khoản Call Senter')),
('Sửa Tài khoản Call Senter', 'setting_call_senter_update', (SELECT id FROM permission_groups WHERE name = 'SETTING - Tài khoản Call Senter')),
('Xóa Tài khoản Call Senter', 'setting_call_senter_delete', (SELECT id FROM permission_groups WHERE name = 'SETTING - Tài khoản Call Senter')),
('Đổi trạng thái Tài khoản Call Senter', 'setting_call_senter_change_state', (SELECT id FROM permission_groups WHERE name = 'SETTING - Tài khoản Call Senter')),
('Xem Tài khoản Call Senter', 'setting_call_senter_view', (SELECT id FROM permission_groups WHERE name = 'SETTING - Tài khoản Call Senter'));
