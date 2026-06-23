INSERT INTO users.permissions(name, code, group_id, modules, sort)
VALUES ('Quản lý cột mốc', 'p_milestone_manage',
        (select id from users.permission_groups where code = 'project_milestone'),
        ARRAY['crm', 'iss'], 0),
       ('Quản lý công việc', 'p_task_manage',
        (select id from users.permission_groups where code = 'project_job'),
        ARRAY['crm', 'iss'], 0);