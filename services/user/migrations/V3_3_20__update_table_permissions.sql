update users.permissions
set modules = '{}'
where modules is null;

update users.permission_groups
set modules = '{}'
where modules is null;