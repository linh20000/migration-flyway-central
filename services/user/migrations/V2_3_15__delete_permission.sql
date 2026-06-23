DELETE
FROM users.permissions
WHERE code = 's_contract_manage'
  and group_id = (SELECT id FROM permission_groups WHERE name = 'SALE - Hợp đồng');

