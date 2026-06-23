INSERT INTO users.permissions(name, code, group_id, modules, sort)
VALUES ('Dự án theo giai đoạn', 'p_dashboard_project_milestone',
        (select id from users.permission_groups where code = 'project_dashboard_project'),
        ARRAY['crm', 'iss'], 2);