INSERT INTO permissions (name, code, group_id)
VALUES
    ('Xoá phiếu đề nghị', 'a_request_delete', (SELECT id FROM permission_groups WHERE name = 'ACCOUNTANT - Phiếu đề nghị'));


