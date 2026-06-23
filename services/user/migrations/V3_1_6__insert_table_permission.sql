update users.permissions
set name = 'Nhập dữ liệu khách hàng'
where name = 'Import Dữ liệu khách hàng';

update users.permissions
set name = 'Xóa dữ liệu khách hàng'
where name = 'Xóa Dữ liệu khách hàng';

update users.permissions
set name = 'Sửa dữ liệu khách hàng'
where name = 'Sửa Dữ liệu khách hàng';

update users.permissions
set name = 'Thêm dữ liệu khách hàng'
where name = 'Thêm Dữ liệu khách hàng';

update users.permissions
set name = 'Xem dữ liệu khách hàng'
where name = 'Xem Dữ liệu khách hàng';

update users.permissions
set name    = 'Nhập sản phẩm',
    modules = ARRAY['crm', 'iss']
where code = 'p_product_import';

INSERT INTO permissions (name, code, group_id, modules)
VALUES ('Nhập chiến dịch', 'd_campaign_import',
        (SELECT id FROM users.permission_groups WHERE name = 'DATA - Chiến dịch'),
        ARRAY['crm']);