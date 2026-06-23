INSERT INTO permission_groups (name)
VALUES ('SETTING - Quyền duyệt');

INSERT INTO permissions (name, code, group_id)
VALUES ('Thêm quyền duyệt', 'u_approval_create',
        (SELECT id FROM permission_groups WHERE name = 'SETTING - Quyền duyệt')),
       ('Sửa quyền duyệt', 'u_approval_update',
        (SELECT id FROM permission_groups WHERE name = 'SETTING - Quyền duyệt')),
       ('Xoá quyền duyệt', 'u_approval_delete',
        (SELECT id FROM permission_groups WHERE name = 'SETTING - Quyền duyệt'));

