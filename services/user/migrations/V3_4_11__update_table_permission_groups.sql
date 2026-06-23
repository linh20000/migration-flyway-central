update users.permission_groups pg
set name = 'Ngành nghề'
, code = 'crm_setting_career'
, sort = (select sort + 0.01 from users.permission_groups mpg where mpg.code = 'crm_setting_field' limit 1)
, group_id = (select id from users.permission_groups mpg where mpg.code = 'crm_setting')
where code = 'crm_career';






