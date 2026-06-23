-- Chèn dữ liệu vào bảng permission_groups
INSERT INTO permission_groups (name) VALUES
('SETTING - Email'),
('SETTING - Tin nhắn'),
('SETTING - Vai trò'),
('SETTING - Tài khoản'),
('SETTING - Khối phòng ban'),
('SALE - Email mẫu'),
('SALE - Sms mẫu'),
('PRODUCT - Sản phẩm');

-- Chèn dữ liệu vào bảng permissions
INSERT INTO permissions (name, code, group_id) VALUES
('Thêm Cấu hình email', 'setting_email_create', (SELECT id FROM permission_groups WHERE name = 'SETTING - Email')),
('Sửa Cấu hình email', 'setting_email_update', (SELECT id FROM permission_groups WHERE name = 'SETTING - Email')),
('Xóa Cấu hình email', 'setting_email_delete', (SELECT id FROM permission_groups WHERE name = 'SETTING - Email')),
('Đổi trạng thái Cấu hình email', 'setting_email_state', (SELECT id FROM permission_groups WHERE name = 'SETTING - Email')),

('Thêm Cấu hình sms', 'setting_sms_create', (SELECT id FROM permission_groups WHERE name = 'SETTING - Tin nhắn')),
('Sửa Cấu hình sms', 'setting_sms_update', (SELECT id FROM permission_groups WHERE name = 'SETTING - Tin nhắn')),
('Xóa Cấu hình sms', 'setting_sms_delete', (SELECT id FROM permission_groups WHERE name = 'SETTING - Tin nhắn')),
('Đổi trạng thái Cấu hình sms', 'setting_sms_state', (SELECT id FROM permission_groups WHERE name = 'SETTING - Tin nhắn')),

('Thêm Vai trò', 'setting_role_create', (SELECT id FROM permission_groups WHERE name = 'SETTING - Vai trò')),
('Sửa Vai trò', 'setting_role_update', (SELECT id FROM permission_groups WHERE name = 'SETTING - Vai trò')),
('Xóa Vai trò', 'setting_role_delete', (SELECT id FROM permission_groups WHERE name = 'SETTING - Vai trò')),

('Thêm Tài khoản', 'setting_user_create', (SELECT id FROM permission_groups WHERE name = 'SETTING - Tài khoản')),
('Sửa Tài khoản', 'setting_user_update', (SELECT id FROM permission_groups WHERE name = 'SETTING - Tài khoản')),
('Khóa/Mở Tài khoản', 'setting_user_change_state', (SELECT id FROM permission_groups WHERE name = 'SETTING - Tài khoản')),

('Thêm Khối phòng ban', 'setting_organizational_structures_create', (SELECT id FROM permission_groups WHERE name = 'SETTING - Khối phòng ban')),
('Sửa Khối phòng ban', 'setting_organizational_structures_update', (SELECT id FROM permission_groups WHERE name = 'SETTING - Khối phòng ban')),
('Xóa Khối phòng ban', 'setting_organizational_structures_delete', (SELECT id FROM permission_groups WHERE name = 'SETTING - Khối phòng ban')),

('Thêm Email mẫu', 's_email_template_create', (SELECT id FROM permission_groups WHERE name = 'SALE - Email mẫu')),
('Sửa Email mẫu', 's_email_template_update', (SELECT id FROM permission_groups WHERE name = 'SALE - Email mẫu')),
('Xóa Email mẫu', 's_email_template_delete', (SELECT id FROM permission_groups WHERE name = 'SALE - Email mẫu')),
('Đổi trạng thái Sms mẫu', 's_email_template_change_status', (SELECT id FROM permission_groups WHERE name = 'SALE - Email mẫu')),

('Thêm Sms mẫu', 's_sms_template_create', (SELECT id FROM permission_groups WHERE name = 'SALE - Sms mẫu')),
('Sửa Sms mẫu', 's_sms_template_update', (SELECT id FROM permission_groups WHERE name = 'SALE - Sms mẫu')),
('Xóa Sms mẫu', 's_sms_template_delete', (SELECT id FROM permission_groups WHERE name = 'SALE - Sms mẫu')),
('Đổi trạng thái Sms mẫu', 's_sms_template_change_status', (SELECT id FROM permission_groups WHERE name = 'SALE - Sms mẫu')),

('Thêm Sản phẩm', 'p_product_create', (SELECT id FROM permission_groups WHERE name = 'PRODUCT - Sản phẩm')),
('Sửa Sản phẩm', 'p_product_update', (SELECT id FROM permission_groups WHERE name = 'PRODUCT - Sản phẩm')),
('Xóa Sản phẩm', 'p_product_delete', (SELECT id FROM permission_groups WHERE name = 'PRODUCT - Sản phẩm')),
('Import Sản phẩm', 'p_product_import', (SELECT id FROM permission_groups WHERE name = 'PRODUCT - Sản phẩm'));
