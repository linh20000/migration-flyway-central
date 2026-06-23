INSERT INTO permissions (name, code, group_id)
VALUES ('Xem quyền duyệt', 'u_approval_view',
        (SELECT id FROM permission_groups WHERE name = 'SETTING - Quyền duyệt'));