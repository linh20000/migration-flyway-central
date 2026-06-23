-- Thêm nhóm quyền chăm sóc khách hàng thuộc CRM
INSERT INTO users.permission_groups
    (id,
     name,
     modules,
     sort,
     group_id,
     code)
VALUES
    (nextval('users.permission_groups_id_seq'),
     'Chăm sóc khách hàng',
     '{iss,crm}',
     1,
     (select id from users.permission_groups where code = 'crm'),
     'crm_customer_care');

-- Thêm quyền quản lý chăm sóc khách hàng
INSERT INTO users.permissions
    (id,
     name,
     code,
     group_id,
     modules,
     sort)
VALUES
    (nextval('users.permissions_id_seq'),
     'Quản lý Chăm sóc khách hàng',
     'crm_customer_care_management',
     (select id from users.permission_groups where code = 'crm_customer_care'),
     '{iss,crm}',
     0);

-- Thêm quyền xem dữ liệu khách hàng
INSERT INTO users.permissions
    (id,
     name,
     code,
     group_id,
     modules,
     sort)
VALUES
    (nextval('users.permissions_id_seq'),
     'Xem dữ liệu khách hàng',
     'crm_customer_view',
     (select id from users.permission_groups where code = 'crm_customer_care'),
     '{iss,crm}',
     0);

-- Thêm quyền phân dữ liệu khách hàng
INSERT INTO users.permissions
    (id,
     name,
     code,
     group_id,
     modules,
     sort)
VALUES
    (nextval('users.permissions_id_seq'),
     'Phân dữ liệu khách hàng',
     'crm_customer_grant',
     (select id from users.permission_groups where code = 'crm_customer_care'),
     '{iss,crm}',
     0);

-- Thêm quyền xuất dữ liệu khách hàng
INSERT INTO users.permissions
    (id,
     name,
     code,
     group_id,
     modules,
     sort)
VALUES
    (nextval('users.permissions_id_seq'),
     'Xuất dữ liệu khách hàng',
     'crm_customer_export',
     (select id from users.permission_groups where code = 'crm_customer_care'),
     '{iss,crm}',
     0);

-- Thêm quyền xem lịch sử cập nhật dữ liệu
INSERT INTO users.permissions
    (id,
     name,
     code,
     group_id,
     modules,
     sort)
VALUES
    (nextval('users.permissions_id_seq'),
     'Xem lịch sử cập nhật dữ liệu',
     'crm_customer_history',
     (select id from users.permission_groups where code = 'crm_customer_care'),
     '{iss,crm}',
     0);