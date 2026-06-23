-- Đổi tên phân quyền "Chăm sóc khách hàng" thành "Chăm sóc"
-- Đổi cấp phân quyền "CRM > Chăm sóc" thành "CRM > Kho dữ liệu > Chăm sóc"
UPDATE users.permission_groups
SET name = 'Chăm sóc',
    group_id = (select id from users.permission_groups where code = 'crm_client')
WHERE code = 'crm_client_analysis';

-- Xoá phân quyền "Quản lý chăm sóc khách hàng"
DELETE from users.permissions
WHERE code = 's_client_analysis_management';