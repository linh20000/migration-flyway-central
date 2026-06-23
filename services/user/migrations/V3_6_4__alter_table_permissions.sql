INSERT INTO users.permissions(name,code,group_id,modules,sort)
VALUES
    ('Báo cáo tiến trình dữ liệu sale','s_sale_progress_report',
     (select id from users.permission_groups where code = 'crm_s_client'),
     ARRAY['crm', 'iss'], 6);