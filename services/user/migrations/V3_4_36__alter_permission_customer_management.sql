DELETE FROM users.permissions
WHERE code = 'crm_customer_care_management'
AND group_id = (SELECT id FROM permission_groups WHERE code = 'crm_customer_care');