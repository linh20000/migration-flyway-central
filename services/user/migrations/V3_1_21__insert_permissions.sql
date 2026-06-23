alter table users.permission_groups
    alter
        column sort SET DATA TYPE double precision;
ALTER TABLE users.permissions
    ALTER COLUMN sort SET DATA TYPE double precision;

INSERT INTO permission_groups (name, modules, sort)
VALUES ('SALE - Mục tiêu', ARRAY['crm'], 1.01);

INSERT INTO permissions (name, code, group_id, modules, sort)
VALUES ('Mục tiêu', 's_dashboard_kpi_crms',
        (SELECT id FROM permission_groups WHERE name = 'DASHBOARD - Tổng quan'), ARRAY['crm'], (select max(sort)
                                                                                                from users.permissions
                                                                                                where group_id =
                                                                                                      (SELECT id
                                                                                                       FROM users.permission_groups
                                                                                                       WHERE name = 'DASHBOARD - Tổng quan'))
            + 1),
       ('Xem mục tiêu', 's_kpi_crms_view',
        (SELECT id FROM permission_groups WHERE name = 'SALE - Mục tiêu'), ARRAY['crm'], 1),
       ('Cập nhật mục tiêu', 's_kpi_crms_update',
        (SELECT id FROM permission_groups WHERE name = 'SALE - Mục tiêu'), ARRAY['crm'], 3),
       ('Sao chép mục tiêu', 's_kpi_crms_copy',
        (SELECT id FROM permission_groups WHERE name = 'SALE - Mục tiêu'), ARRAY['crm'], 4),
       ('Phân bổ mục tiêu', 's_kpi_crms_allocate',
        (SELECT id FROM permission_groups WHERE name = 'SALE - Mục tiêu'), ARRAY['crm'], 5),
       ('Nhập hợp đồng', 's_contract_import',
        (SELECT id FROM permission_groups WHERE name = 'SALE - Hợp đồng'), ARRAY['crm'], (select max(sort)
                                                                                          from users.
                                                                                                   permissions
                                                                                          where group_id =
                                                                                                (SELECT id FROM users.permission_groups WHERE name = 'SALE - Hợp đồng')) +
                                                                                         1),
       ('Nhập đơn hàng', 's_orders_import',
        (SELECT id FROM permission_groups WHERE name = 'SALE - Đơn hàng'), ARRAY['crm'], (select max(sort)
                                                                                          from users.
                                                                                                   permissions
                                                                                          where group_id =
                                                                                                (SELECT id FROM users.permission_groups WHERE name = 'SALE - Đơn hàng')) +
                                                                                         1),
       ('Nhập báo giá', 's_qoute_orders_import',
        (SELECT id FROM permission_groups WHERE name = 'SALE - Báo giá'), ARRAY['crm'], (select max(sort)
                                                                                         from users.
                                                                                                  permissions
                                                                                         where group_id =
                                                                                               (SELECT id FROM users.permission_groups WHERE name = 'SALE - Báo giá')) +
                                                                                        1)
;
