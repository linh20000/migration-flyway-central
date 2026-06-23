INSERT INTO users.permissions (name, code, group_id, modules, sort)
VALUES ('Thống kê mức độ hiệu quả từ nguồn khách hàng', 'f_report_client_sources_performance_statistics',
        (SELECT id FROM users.permission_groups WHERE code = 'crm_report'), ARRAY['crm'], 6);