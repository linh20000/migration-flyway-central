INSERT INTO permissions (name, code, group_id)
VALUES ('Quản lý hợp đồng chưa duyệt', 's_unapproved_contracts_view',
        (SELECT id FROM permission_groups WHERE name = 'SALE - Hợp đồng')),
       ('Quản lý hợp đồng đã duyệt', 's_approved_contracts_view',
        (SELECT id FROM permission_groups WHERE name = 'SALE - Hợp đồng'));