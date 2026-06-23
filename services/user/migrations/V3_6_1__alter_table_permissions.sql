
INSERT INTO users.permissions(name,code,group_id,modules,sort)
VALUES
    ('Xuất dữ liệu dự án','p_project_export',
     (select id from users.permission_groups where code = 'project_project'),
     ARRAY['crm', 'iss'], 8)

;
