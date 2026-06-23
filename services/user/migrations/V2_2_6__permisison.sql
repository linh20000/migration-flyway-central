-- Chèn dữ liệu vào bảng permission_groups
INSERT INTO permission_groups (name)
VALUES ('SALE - Tổng quan');

-- Chèn dữ liệu vào bảng permissions
INSERT INTO permissions (name, code, group_id)
VALUES ('Xem tổng quan', 's_dashboard',
        (SELECT id FROM permission_groups WHERE name = 'SALE - Tổng quan'));

-- Chèn dữ liệu vào bảng permission_groups
INSERT INTO permission_groups (name)
VALUES ('MARKETING - Tổng quan');

-- Chèn dữ liệu vào bảng permissions
INSERT INTO permissions (name, code, group_id)
VALUES ('Xem tổng quan', 'm_dashboard',
        (SELECT id FROM permission_groups WHERE name = 'MARKETING - Tổng quan'));

delete from permissions where group_id = (SELECT id FROM permission_groups WHERE name = 'SALE - Báo giá đơn hàng');
delete from permission_groups where name = 'SALE - Báo giá đơn hàng';



