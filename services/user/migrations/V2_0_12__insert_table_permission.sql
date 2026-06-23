
-- Chèn dữ liệu vào bảng permissions
INSERT INTO permissions (name, code, group_id) VALUES
('Xem Cấu hình email', 'setting_email_view', (SELECT id FROM permission_groups WHERE name = 'SETTING - Email')),

('Xem Cấu hình sms', 'setting_sms_view', (SELECT id FROM permission_groups WHERE name = 'SETTING - Tin nhắn')),

('Xem Vai trò', 'setting_role_view', (SELECT id FROM permission_groups WHERE name = 'SETTING - Vai trò')),

('Xem Tài khoản', 'setting_user_view', (SELECT id FROM permission_groups WHERE name = 'SETTING - Tài khoản')),

('Xem Khối phòng ban', 'setting_organizational_structures_view', (SELECT id FROM permission_groups WHERE name = 'SETTING - Khối phòng ban')),

('Xem Email mẫu', 's_email_template_view', (SELECT id FROM permission_groups WHERE name = 'SALE - Email mẫu')),

('Xem Sms mẫu', 's_sms_template_view', (SELECT id FROM permission_groups WHERE name = 'SALE - Sms mẫu')),

('Xem Sản phẩm', 'p_product_view', (SELECT id FROM permission_groups WHERE name = 'PRODUCT - Sản phẩm'));
