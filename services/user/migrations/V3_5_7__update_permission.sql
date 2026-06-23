update users.permissions
set sort = 2, modules = ARRAY['crm', 'iss']
where code = 'f_report_client_sources_performance_statistics';