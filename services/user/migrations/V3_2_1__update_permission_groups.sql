update users.permission_groups
set sort = (select sort - 0.1
            from users.permission_groups
            where name = 'SALE - Báo cáo')
where name = 'SALE - Mục tiêu';


INSERT
INTO permission_groups (name, modules, sort)
VALUES ('DATA - Kho dữ liệu', ARRAY['crm'], (select sort + 0.1
                                             from users.permission_groups
                                             where name = 'DASHBOARD - Tổng quan'));

INSERT INTO permissions (name, code, group_id, modules, sort)
values ('Xem kho dữ liệu', 'd_warehouse_view',
        (SELECT id FROM permission_groups WHERE name = 'DATA - Kho dữ liệu'), ARRAY['crm'], 1),
       ('Thêm dữ liệu', 'd_warehouse_create',
        (SELECT id FROM permission_groups WHERE name = 'DATA - Kho dữ liệu'), ARRAY['crm'], 2),
       ('Cập nhật dữ liệu', 'd_warehouse_update',
        (SELECT id FROM permission_groups WHERE name = 'DATA - Kho dữ liệu'), ARRAY['crm'], 3),
       ('Xóa dữ liệu', 'd_warehouse_delete',
        (SELECT id FROM permission_groups WHERE name = 'DATA - Kho dữ liệu'), ARRAY['crm'], 4),
       ('Nhập dữ liệu', 'd_warehouse_import',
        (SELECT id FROM permission_groups WHERE name = 'DATA - Kho dữ liệu'), ARRAY['crm'], 5);

update users.permissions
set modules = ARRAY['iss']
where group_id = (SELECT id FROM permission_groups WHERE name = 'DATA - Dữ liệu khách hàng');

update users.permission_groups
set modules = ARRAY['iss']
where name = 'DATA - Dữ liệu khách hàng';

delete
from users.permissions
where group_id = (SELECT id FROM permission_groups WHERE name = 'DATA - Tiềm năng');

delete
from users.permission_groups
where name = 'DATA - Tiềm năng';

