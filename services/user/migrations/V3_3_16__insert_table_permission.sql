INSERT INTO users.permission_groups(name, modules, sort, group_id, code)
	VALUES ('Kế toán',
	ARRAY['iss', 'crm'],
	1,
	(select id from users.permission_groups pg where code = 'report'),
	'report_accountant');


INSERT INTO users.permissions( name, code, group_id, modules, sort)
	VALUES ('Xem báo cáo tài chính cá nhân',
	'a_report_debt_by_employee_view',
	(select id from users.permission_groups pg where code = 'report_accountant'),
	ARRAY['iss','crm'],
	0
	);

INSERT INTO users.permissions( name, code, group_id, modules, sort)
	VALUES ('Xuất báo cáo tài chính cá nhân',
	'a_report_debt_by_employee_export',
	(select id from users.permission_groups pg where code = 'report_accountant'),
	ARRAY['iss','crm'],
	1
	);

INSERT INTO users.permissions( name, code, group_id, modules, sort)
	VALUES ('Quản lý báo cáo tài chính cá nhân',
	'a_report_debt_by_employee_manage',
	(select id from users.permission_groups pg where code = 'report_accountant'),
	ARRAY['iss','crm'],
	2
	);

update users.permission_groups
set sort = 0
where code = 'report_administrative';
