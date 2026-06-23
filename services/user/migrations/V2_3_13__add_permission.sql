INSERT INTO permission_groups (name)
VALUES ('PROJECT - Chi phí');
INSERT INTO permissions (name, code, group_id)
VALUES ('Xem chi phí', 'p_expense_view',
        (SELECT id FROM permission_groups WHERE name = 'PROJECT - Chi phí'));