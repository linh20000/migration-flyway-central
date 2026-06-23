INSERT INTO permissions (name, code, group_id)
VALUES
    ('Quản trị chi phí', 'a_request_manage', (SELECT id FROM permission_groups WHERE name = 'ACCOUNTANT - Phiếu đề nghị'));


