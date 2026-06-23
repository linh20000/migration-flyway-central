update users.permission_groups
set group_id = (select id from users.permission_groups where code = 'crm_s_client')
where code = 'crm_client_analysis';

update users.permission_groups set name = 'Phân tích' where code = 'crm_client_analysis';
update users.permission_groups set name = 'Kho dữ liệu' where code = 'crm_s_client';

update users.permissions set name = 'Thêm phân tích khách hàng' where code = 's_client_analysis_create';
update users.permissions set name = 'Xem phân tích khách hàng' where code = 's_client_analysis_view';
update users.permissions set name = 'Xóa phân tích khách hàng' where code = 's_client_analysis_delete';
update users.permissions set name = 'Sửa phân tích khách hàng' where code = 's_client_analysis_update';
update users.permissions set name = 'Đổi trạng thái phân tích khách hàng' where code = 's_client_analysis_change_state';

delete from users.permissions
where code in ('d_warehouse_import', 'd_warehouse_view', 'd_warehouse_update', 'd_warehouse_delete', 'd_warehouse_create');

delete from users.permission_groups
where code in ('crm_client');