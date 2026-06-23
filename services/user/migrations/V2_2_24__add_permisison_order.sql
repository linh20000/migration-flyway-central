-- Chèn dữ liệu vào bảng permissions
INSERT INTO permissions (name, code, group_id) VALUES
('Điều phối Đơn hàng', 's_orders_manage', (SELECT id FROM permission_groups WHERE name = 'SALE - Đơn hàng'));
