INSERT INTO users.permissions( name, code, group_id, modules, sort)
VALUES ('Chuyển loại dự án',
        'p_change_project_type',
        (select id from users.permission_groups pg where code = 'project_project'),
        ARRAY['iss','crm'],
        2
       );

INSERT INTO users.permissions( name, code, group_id, modules, sort)
VALUES ('Tạo dự án nội bộ',
        'p_create_project_internal',
        (select id from users.permission_groups pg where code = 'project_project'),
        ARRAY['iss','crm'],
        2
       );

INSERT INTO users.permissions( name, code, group_id, modules, sort)
VALUES ('Tạo dự án chính thức',
        'p_create_project_official',
        (select id from users.permission_groups pg where code = 'project_project'),
        ARRAY['iss','crm'],
        2
       );

INSERT INTO users.permissions( name, code, group_id, modules, sort)
VALUES ('Tạo dự án tiền đề',
        'p_create_project_preliminary',
        (select id from users.permission_groups pg where code = 'project_project'),
        ARRAY['iss','crm'],
        2
       );