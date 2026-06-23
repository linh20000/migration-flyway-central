update users.permission_groups
set code = 'crm_kpi_crm'
where code = 'crm_kpi' and name = 'Mục tiêu';

update users.permission_groups
set modules = ARRAY['iss', 'crm']
where code != any(ARRAY[
'crm_dashboard',
'crm_campaign',
'crm_opportunity',
'crm_forecast_sale',
'crm_report',
'crm_kpi_crm']);

update users.permission_groups
set modules = ARRAY['crm']
where code = any(ARRAY[
'crm_dashboard',
'crm_campaign',
'crm_opportunity',
'crm_forecast_sale',
'crm_report',
'crm_kpi_crm']);

update users.permission_groups
set modules = ARRAY['iss']
where code = any(ARRAY[
'administrative_timekeeping',
'administrative_setting_device_otp',
'administrative_setting_device',
'administrative_setting_workplace',
'report_accountant']);

