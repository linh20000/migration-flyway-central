-- Chèn dữ liệu vào bảng permissions
INSERT INTO permissions (name, code, group_id) VALUES

('Thêm Chủ đề trao đổi', 's_order_room_create', (SELECT id FROM permission_groups WHERE name = 'SALE - Đơn hàng')),
('Sửa Chủ đề trao đổi', 's_order_room_update', (SELECT id FROM permission_groups WHERE name = 'SALE - Đơn hàng')),
('Xóa Chủ đề trao đổi', 's_order_room_delete', (SELECT id FROM permission_groups WHERE name = 'SALE - Đơn hàng')),
('Xem Chủ đề trao đổi', 's_order_room_view', (SELECT id FROM permission_groups WHERE name = 'SALE - Đơn hàng')),

('Thêm trao đổi', 's_order_comment_create', (SELECT id FROM permission_groups WHERE name = 'SALE - Đơn hàng')),
('Sửa trao đổi', 's_order_comment_update', (SELECT id FROM permission_groups WHERE name = 'SALE - Đơn hàng')),
('Xóa trao đổi', 's_order_comment_delete', (SELECT id FROM permission_groups WHERE name = 'SALE - Đơn hàng')),
('Xem trao đổi', 's_order_comment_view', (SELECT id FROM permission_groups WHERE name = 'SALE - Đơn hàng'));


