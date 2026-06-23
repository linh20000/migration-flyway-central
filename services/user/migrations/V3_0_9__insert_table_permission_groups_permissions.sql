INSERT INTO users.permission_groups (name, modules)
VALUES ('DATA - Chiến dịch', ARRAY['crm']),
       ('DATA - Tiềm năng', ARRAY['crm']),
       ('DATA - Cơ hội', ARRAY['crm']),
       ('DATA - Dự báo doanh thu', ARRAY['crm']),
       ('DATA - Báo cáo', ARRAY['crm']);
INSERT INTO users.permissions (name, code, group_id, modules)
VALUES ('Xem chiến dịch', 'd_campaign_view', (SELECT id FROM users.permission_groups WHERE name = 'DATA - Chiến dịch'),
        ARRAY['crm']),
       ('Tạo mới chiến dịch', 'd_campaign_create',
        (SELECT id FROM users.permission_groups WHERE name = 'DATA - Chiến dịch'),
        ARRAY['crm']),
       ('Cập nhật chiến dịch', 'd_campaign_update',
        (SELECT id FROM users.permission_groups WHERE name = 'DATA - Chiến dịch'), ARRAY['crm']),
       ('Xóa chiến dịch', 'd_campaign_delete',
        (SELECT id FROM users.permission_groups WHERE name = 'DATA - Chiến dịch'),
        ARRAY['crm']),

       ('Xem tiềm năng', 'd_lead_view', (SELECT id FROM users.permission_groups WHERE name = 'DATA - Tiềm năng'),
        ARRAY['crm']),
       ('Tạo mới tiềm năng', 'd_lead_create', (SELECT id FROM users.permission_groups WHERE name = 'DATA - Tiềm năng'),
        ARRAY['crm']),
       ('Cập nhật tiềm năng', 'd_lead_update',
        (SELECT id FROM users.permission_groups WHERE name = 'DATA - Tiềm năng'), ARRAY['crm']),
       ('Xóa tiềm năng', 'd_lead_delete', (SELECT id FROM users.permission_groups WHERE name = 'DATA - Tiềm năng'),
        ARRAY['crm']),
       ('Nhập tiềm năng', 'd_lead_import', (SELECT id FROM users.permission_groups WHERE name = 'DATA - Tiềm năng'),
        ARRAY['crm']),

       ('Xem cơ hội', 'd_opportunity_view', (SELECT id FROM users.permission_groups WHERE name = 'DATA - Cơ hội'),
        ARRAY['crm']),
       ('Tạo mới cơ hội', 'd_opportunity_create', (SELECT id FROM users.permission_groups WHERE name = 'DATA - Cơ hội'),
        ARRAY['crm']),
       ('Cập nhật cơ hội', 'd_opportunity_update',
        (SELECT id FROM users.permission_groups WHERE name = 'DATA - Cơ hội'), ARRAY['crm']),
       ('Xóa cơ hội', 'd_opportunity_delete', (SELECT id FROM users.permission_groups WHERE name = 'DATA - Cơ hội'),
        ARRAY['crm']),
       ('Nhập cơ hội', 'd_opportunity_import', (SELECT id FROM users.permission_groups WHERE name = 'DATA - Cơ hội'),
        ARRAY['crm']),

       ('Xem dự báo doanh thu', 'd_forecast_sale_view',
        (SELECT id FROM users.permission_groups WHERE name = 'DATA - Dự báo doanh thu'), ARRAY['crm']),
       ('Xem báo cáo', 'd_report_view', (SELECT id FROM users.permission_groups WHERE name = 'DATA - Báo cáo'),
        ARRAY['crm']);

update users.permission_groups
set modules = ARRAY['iss', 'crm']
where name in ('DATA - Dữ liệu khách hàng'
    , 'SALE - Đơn hàng'
    , 'SALE - Hợp đồng'
    , 'SALE - Báo giá đơn hàng'
    , 'PRODUCT - Sản phẩm');

update users.permissions
set modules = ARRAY['iss', 'crm']
where code in ('d_clients_view'
    , 'd_clients_create'
    , 'd_clients_update'
    , 'd_clients_delete'
    , 'd_clients_import'
    , 's_orders_view'
    , 's_orders_create'
    , 's_orders_update'
    , 's_orders_delete'
    , 's_contracts_view'
    , 's_contracts_create'
    , 's_contracts_update'
    , 's_contracts_delete'
    , 's_qoute_orders_view'
    , 's_qoute_orders_create'
    , 's_qoute_orders_update'
    , 's_qoute_orders_delete'
    , 'p_product_view'
    , 'p_product_create'
    , 'p_product_update'
    , 'p_product_delete');