delete from users.permission_groups
where name = any(ARRAY['ORDER', 'Issue'])