update users.permissions
set modules = ARRAY['iss']
where code = 's_entire_approval';

update users.permission_groups
set modules = ARRAY['iss']
where name = 'INDIVIDUAL - Quản lý cá nhân';

INSERT INTO permission_groups (name, modules)
VALUES ('SETTING - Duyệt', ARRAY['crm']);

INSERT INTO permissions (name, code, group_id, modules)
VALUES ('Truy cập duyệt', 's_approval_view',
        (SELECT id FROM permission_groups WHERE name = 'SETTING - Duyệt'), ARRAY['crm']),
       ('Duyệt toàn bộ', 's_approval_entire',
        (SELECT id FROM permission_groups WHERE name = 'SETTING - Duyệt'), ARRAY['crm']);