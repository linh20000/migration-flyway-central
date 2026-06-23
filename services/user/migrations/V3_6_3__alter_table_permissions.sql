INSERT INTO users.permissions(name,code,group_id,modules,sort)
VALUES
    ('Hủy hợp đồng','s_contract_cancel',
     (select id from users.permission_groups where code = 'crm_contract'),
     ARRAY['crm', 'iss'], 8);

INSERT INTO users.permissions(name,code,group_id,modules,sort)
VALUES
    ('Hủy báo giá','s_qoute_order_cancel',
     (select id from users.permission_groups where code = 'crm_qoute_order'),
     ARRAY['crm', 'iss'], 6);

INSERT INTO users.permissions(name,code,group_id,modules,sort)
VALUES
    ('Hủy đơn hàng','s_orders_cancel',
     (select id from users.permission_groups where code = 'crm_order'),
     ARRAY['crm', 'iss'], 7);
