update users.permissions
set modules = ARRAY['iss', 'crm']
where group_id in (select id from users.permission_groups where code = 'setting_approval');

update users.permission_groups
set modules = null
where code  ='crm_client';

do $$
declare
	services varchar[] := ARRAY['Tổng quan', 'Mục tiêu', 'Chiến dịch', 'Cơ hội', 'Dự báo doanh thu', 'Báo cáo'];
begin
	update users.permission_groups
	set modules = ARRAY['crm']
	where group_id = (select id from users.permission_groups where code = 'crm')
	and name = any(services);

	update users.permissions
	set modules = ARRAY['crm']
	where group_id in (select id from users.permission_groups where code like '%crm%' and name = any(services));
end $$;

update users.permission_groups
set code = 'report_administrative'
where code = 'report_report';

update users.permissions
set group_id = (select id from users.permission_groups where code = 'report_administrative')
where code = any(ARRAY['u_timekeeping_entry_manage', 'u_timekeeping_entry_export']);

update users.permission_groups
set name = 'Hành chính nhân sự'
where code = 'report_administrative';

