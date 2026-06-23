DELETE FROM users.permissions
WHERE code = 's_customer_management'
AND group_id = (SELECT id FROM permission_groups WHERE code = 'crm_s_client');