INSERT INTO users.permission_groups(name, modules, sort, group_id, code)
VALUES ('Giai đoạn',
        ARRAY['iss', 'crm'],
        (select max(sort) + 1 from users.permission_groups where code = 'project_setting'),
        (select id from users.permission_groups pg where code = 'project_setting'),
        'project_setting_milestone');

INSERT INTO users.permissions( name, code, group_id, modules, sort)
VALUES ('Xem giai đoạn',
        'p_setting_milestone_view',
        (select id from users.permission_groups where code = 'project_setting_milestone'),
        ARRAY['iss','crm'],
        0
       ),
       ('Thêm giai đoạn',
        'p_setting_milestone_create',
        (select id from users.permission_groups where code = 'project_setting_milestone'),
        ARRAY['iss','crm'],
        1
       ),
       ('Cập nhật giai đoạn',
        'p_setting_milestone_update',
        (select id from users.permission_groups where code = 'project_setting_milestone'),
        ARRAY['iss','crm'],
        1
       ),
       ('Xoá giai đoạn',
        'p_setting_milestone_delete',
        (select id from users.permission_groups where code = 'project_setting_milestone'),
        ARRAY['iss','crm'],
        1
       ),
       ('Chuyển giai đoạn dự án',
        'p_project_milestone_state',
        (select id from users.permission_groups where code = 'project_project'),
        ARRAY['iss','crm'],
        (select max(sort) + 1 from users.permissions where group_id = (select id from users.permission_groups where code = 'project_project'))
       );
