UPDATE users.permissions
SET code = REPLACE(code, 's_', 'd_')
WHERE code LIKE 's_pnl_template_%';