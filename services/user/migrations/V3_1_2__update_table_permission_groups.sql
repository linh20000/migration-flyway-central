update users.permission_groups
set modules = ARRAY['iss', 'crm']
where name in ('SALE - Báo giá');