do $$
declare
	item record;
	codes varchar[] := ARRAY['individual', 'project', 'crm', 'marketing', 'product', 'accountant', 'administrative', 'report', 'setting'];
	index bigint := 1;
begin
	for item in select * from users.permission_groups where group_id is null order by sort asc
	loop
		update users.permission_groups
		set code = codes[index]
		where id = item.id;
		index := index + 1;
	end loop;
end $$;

update users.permission_groups set code = 'workplace' where name ='Địa điểm làm việc';
update users.permission_groups set code = 'device' where name ='Quản lý thiết bị';
update users.permission_groups set code = 'device_otp' where name ='Quản lý OTP';
update users.permission_groups set code = 'timekeeping' where name ='Chấm công';
update users.permission_groups set code = 'setting' where name ='Cài đặt';
update users.permission_groups set code = 'setting' where name ='Cài đặt';
update users.permission_groups set code = 'setting' where name ='Cài đặt';
update users.permission_groups set code = 'setting' where name ='Cài đặt';
update users.permission_groups set code = 'setting' where name ='Cài đặt';
update users.permission_groups set code = 'report' where name ='Báo cáo';
update users.permission_groups set code = 'administrative' where name ='Hành chính nhân sự';
update users.permission_groups set code = 'accountant' where name ='Kế toán';
update users.permission_groups set code = 'product' where name ='Sản phẩm';
update users.permission_groups set code = 'marketing' where name ='Marketing';
update users.permission_groups set code = 'crm' where name ='CRM';
update users.permission_groups set code = 'project' where name ='Dự án';
update users.permission_groups set code = 'client' where name ='Kho dữ liệu';
update users.permission_groups set code = 'report' where name ='Báo cáo';
update users.permission_groups set code = 'reason_explain' where name ='Loại giải trình';
update users.permission_groups set code = 'reason_leave' where name ='Loại nghỉ';
update users.permission_groups set code = 'shift' where name ='Ca làm việc';
update users.permission_groups set code = 'kpi' where name ='Mục tiêu';
update users.permission_groups set code = 'approval' where name ='Duyệt';
update users.permission_groups set code = 'report' where name ='Báo cáo';
update users.permission_groups set code = 'forecast_sale' where name ='Dự báo doanh thu';
update users.permission_groups set code = 'opportunity' where name ='Cơ hội';
update users.permission_groups set code = 'campaign' where name ='Chiến dịch';
update users.permission_groups set code = 'expense' where name ='Chi phí';
update users.permission_groups set code = 'room' where name ='Trao đổi dự án';
update users.permission_groups set code = 'room' where name ='Trao đổi đơn hàng';
update users.permission_groups set code = 'room' where name ='Trao đổi khách hàng';
update users.permission_groups set code = 'approval' where name ='Quyền duyệt';
update users.permission_groups set code = 'individual' where name ='Cá nhân';
update users.permission_groups set code = 'rose_group' where name ='Cài đặt mức hoa hồng';
update users.permission_groups set code = 'rose' where name ='Cài đặt hoa hồng';
update users.permission_groups set code = 'reduce' where name ='Cài đặt giảm trừ';
update users.permission_groups set code = 'bank_account' where name ='Cài đặt tài khoản ngân hàng';
update users.permission_groups set code = 'accountant_account' where name ='Tài khoản kế toán';
update users.permission_groups set code = 'expense_type' where name ='Cài đặt loại phí';
update users.permission_groups set code = 'expense' where name ='Cài đặt chi phí';
update users.permission_groups set code = 'client_payment' where name ='Dòng tiền về';
update users.permission_groups set code = 'cost' where name ='Chi phí';
update users.permission_groups set code = 'request' where name ='Phiếu đề nghị';
update users.permission_groups set code = 'bill' where name ='Hoá đơn';
update users.permission_groups set code = 'dashboard' where name ='Tổng quan';
update users.permission_groups set code = 'call' where name ='Cuộc gọi';
update users.permission_groups set code = 'file' where name ='Tệp tin';
update users.permission_groups set code = 'approval' where name ='Quy trình';
update users.permission_groups set code = 'task_type' where name ='Loại công việc';
update users.permission_groups set code = 'task_state' where name ='Trạng thái công việc';
update users.permission_groups set code = 'task' where name ='Công việc';
update users.permission_groups set code = 'project' where name ='Dự án';
update users.permission_groups set code = 'milestone' where name ='Cột mốc';
update users.permission_groups set code = 'dashboard' where name ='Tổng quan';
update users.permission_groups set code = 'dashboard' where name ='Tổng quan';
update users.permission_groups set code = 's_client' where name ='Khách hàng';
update users.permission_groups set code = 'd_client' where name ='Dữ liệu khách hàng';
update users.permission_groups set code = 'client_scale' where name ='Quy mô';
update users.permission_groups set code = 'setting_allocation' where name ='Cài đặt phân dữ liệu';
update users.permission_groups set code = 'segment' where name ='Phân khúc';
update users.permission_groups set code = 'demand_forecasts' where name ='Dự báo nhu cầu sản phẩm';
update users.permission_groups set code = 'role' where name ='Phân quyền';
update users.permission_groups set code = 'relationship' where name ='Quan hệ';
update users.permission_groups set code = 'position' where name ='Chức vụ';
update users.permission_groups set code = 'level' where name ='Cấp bậc';
update users.permission_groups set code = 'implementer' where name ='Người phụ trách';
update users.permission_groups set code = 'field' where name ='Lĩnh vực';
update users.permission_groups set code = 'setting_organizational_structure' where name ='Phòng ban';
update users.permission_groups set code = 'client_source' where name ='Nguồn khách hàng';
update users.permission_groups set code = 'd_client' where name ='Dữ liệu khách hàng';
update users.permission_groups set code = 'career' where name ='Nghành nghề';
update users.permission_groups set code = 'business_type' where name ='Loại hình';
update users.permission_groups set code = 'allocation' where name ='Phân công công việc';
update users.permission_groups set code = 'product' where name ='Sản phẩm';
update users.permission_groups set code = 'sms_template' where name ='Sms mẫu';
update users.permission_groups set code = 'email_template' where name ='Email mẫu';
update users.permission_groups set code = 'organizational_structure' where name ='Khối phòng ban';
update users.permission_groups set code = 'user' where name ='Tài khoản';
update users.permission_groups set code = 'role' where name ='Vai trò';
update users.permission_groups set code = 'sms' where name ='Tin nhắn';
update users.permission_groups set code = 'email' where name ='Email';
update users.permission_groups set code = 'calendar' where name ='Lịch hẹn';
update users.permission_groups set code = 'qoute_order' where name ='Báo giá';
update users.permission_groups set code = 'order' where name ='Đơn hàng';
update users.permission_groups set code = 'debt' where name ='Công nợ';
update users.permission_groups set code = 'contract' where name ='Hợp đồng';
update users.permission_groups set code = 'client_analysis' where name ='Chăm sóc khách hàng';
update users.permission_groups set code = 'market_research' where name ='Nghiên cứu thị trường';
update users.permission_groups set code = 'kpi' where name ='Kpi';
update users.permission_groups set code = 'job_process' where name ='Báo cáo công việc';
update users.permission_groups set code = 'job' where name ='Công việc';
update users.permission_groups set code = 'business_plan' where name ='Kế hoạch kinh doanh';
update users.permission_groups set code = 'market_research' where name ='Nghiên cứu thị trường';
update users.permission_groups set code = 'kpi' where name ='Kpi';
update users.permission_groups set code = 'job_process' where name ='Báo cáo công việc';
update users.permission_groups set code = 'job' where name ='Công việc';
update users.permission_groups set code = 'business_plan' where name ='Kế hoạch kinh doanh';

do $$
declare
 item record;
begin
    for item in select * from users.permission_groups where group_id is not null order by group_id asc
    loop
        update users.permission_groups pg
        set code = concat((select code from users.permission_groups where id = pg.group_id),'_', code)
        where id = item.id;
    end loop;
end $$;