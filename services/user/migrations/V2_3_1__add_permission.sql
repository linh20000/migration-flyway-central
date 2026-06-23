INSERT INTO permissions (name, code, group_id)
VALUES ('Quản lý hợp đồng', 's_contract_manage',
        (SELECT id FROM permission_groups WHERE name = 'SALE - Hợp đồng'));