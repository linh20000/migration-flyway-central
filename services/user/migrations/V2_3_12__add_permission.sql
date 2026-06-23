INSERT INTO permissions (name, code, group_id)
VALUES ('Duyệt toàn bộ', 's_entire_approval',
        (SELECT id FROM permission_groups WHERE name = 'INDIVIDUAL - Quản lý cá nhân'));