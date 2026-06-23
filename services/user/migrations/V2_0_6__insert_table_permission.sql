-- Chèn dữ liệu vào bảng permission_groups
INSERT INTO permission_groups (name) VALUES
('SALE - Kế hoạch kinh doanh'),
('SALE - Người thực hiện'),
('SALE - Công việc'),
('SALE - Báo cáo công việc'),
('SALE - Kpi'),
('SALE - Nghiên cứu thị trường'),
('SALE - Chat'),
('SALE - Chăm sóc khách hàng'),
('SALE - Hợp đồng'),
('SALE - Công nợ'),
('SALE - Đơn hàng'),
('SALE - Báo giá'),
('SALE - Báo giá đơn hàng'),
('SALE - Lịch hẹn');

-- Chèn dữ liệu vào bảng permissions
INSERT INTO permissions (name, code, group_id) VALUES
('Thêm Kế hoạch kinh doanh', 's_business_plans_create', (SELECT id FROM permission_groups WHERE name = 'SALE - Kế hoạch kinh doanh')),
('Sửa Kế hoạch kinh doanh', 's_business_plans_update', (SELECT id FROM permission_groups WHERE name = 'SALE - Kế hoạch kinh doanh')),
('Xóa Kế hoạch kinh doanh', 's_business_plans_delete', (SELECT id FROM permission_groups WHERE name = 'SALE - Kế hoạch kinh doanh')),
('Đổi trạng thái Kế hoạch kinh doanh', 's_business_plans_state', (SELECT id FROM permission_groups WHERE name = 'SALE - Kế hoạch kinh doanh')),

('Thêm Người thực hiện', 's_implementers_create', (SELECT id FROM permission_groups WHERE name = 'SALE - Người thực hiện')),
('Sửa Người thực hiện', 's_implementers_update', (SELECT id FROM permission_groups WHERE name = 'SALE - Người thực hiện')),
('Xóa Người thực hiện', 's_implementers_delete', (SELECT id FROM permission_groups WHERE name = 'SALE - Người thực hiện')),

('Thêm Kpi', 's_kpis_create', (SELECT id FROM permission_groups WHERE name = 'SALE - Kpi')),
('Sửa Kpi', 's_kpis_update', (SELECT id FROM permission_groups WHERE name = 'SALE - Kpi')),

('Thêm Nghiên cứu thị trường', 's_market_research_create', (SELECT id FROM permission_groups WHERE name = 'SALE - Nghiên cứu thị trường')),
('Sửa Nghiên cứu thị trường', 's_market_research_update', (SELECT id FROM permission_groups WHERE name = 'SALE - Nghiên cứu thị trường')),
('Xóa Nghiên cứu thị trường', 's_market_research_delete', (SELECT id FROM permission_groups WHERE name = 'SALE - Nghiên cứu thị trường')),
('Đổi trạng thái Nghiên cứu thị trường', 's_market_research_change_status', (SELECT id FROM permission_groups WHERE name = 'SALE - Nghiên cứu thị trường')),

('Thêm Báo cáo công việc', 's_job_process_create', (SELECT id FROM permission_groups WHERE name = 'SALE - Báo cáo công việc')),
('Sửa Báo cáo công việc', 's_job_process_update', (SELECT id FROM permission_groups WHERE name = 'SALE - Báo cáo công việc')),
('Xóa Báo cáo công việc', 's_job_process_delete', (SELECT id FROM permission_groups WHERE name = 'SALE - Báo cáo công việc')),
('Đổi trạng thái Báo cáo công việc', 's_job_process_state', (SELECT id FROM permission_groups WHERE name = 'SALE - Báo cáo công việc')),
('Thêm đánh giá Báo cáo công việc', 's_job_process_create_comments', (SELECT id FROM permission_groups WHERE name = 'SALE - Báo cáo công việc')),
('Sửa đánh giá Báo cáo công việc', 's_job_process_update_comments', (SELECT id FROM permission_groups WHERE name = 'SALE - Báo cáo công việc')),
('Xóa đánh giá Báo cáo công việc', 's_job_process_delete_comments', (SELECT id FROM permission_groups WHERE name = 'SALE - Báo cáo công việc')),

('Thêm Chat', 's_chat_create', (SELECT id FROM permission_groups WHERE name = 'SALE - Chat')),
('Sửa Chat', 's_chat_update', (SELECT id FROM permission_groups WHERE name = 'SALE - Chat')),
('Đổi trạng thái Chat', 's_chat_change_state', (SELECT id FROM permission_groups WHERE name = 'SALE - Chat')),
('Xóa Chat', 's_chat_delete', (SELECT id FROM permission_groups WHERE name = 'SALE - Chat')),

('Thêm Chăm sóc khách hàng', 's_client_analysis_create', (SELECT id FROM permission_groups WHERE name = 'SALE - Chăm sóc khách hàng')),
('Sửa Chăm sóc khách hàng', 's_client_analysis_update', (SELECT id FROM permission_groups WHERE name = 'SALE - Chăm sóc khách hàng')),
('Đổi trạng thái Chăm sóc khách hàng', 's_client_analysis_change_state', (SELECT id FROM permission_groups WHERE name = 'SALE - Chăm sóc khách hàng')),
('Xóa Chăm sóc khách hàng', 's_client_analysis_delete', (SELECT id FROM permission_groups WHERE name = 'SALE - Chăm sóc khách hàng')),

('Thêm Hợp đồng', 's_contracts_create', (SELECT id FROM permission_groups WHERE name = 'SALE - Hợp đồng')),
('Sửa Hợp đồng', 's_contracts_update', (SELECT id FROM permission_groups WHERE name = 'SALE - Hợp đồng')),
('Đổi trạng thái Hợp đồng', 's_contracts_change_state', (SELECT id FROM permission_groups WHERE name = 'SALE - Hợp đồng')),
('Xóa Hợp đồng', 's_contracts_delete', (SELECT id FROM permission_groups WHERE name = 'SALE - Hợp đồng')),

('Thêm Công nợ', 's_debts_create', (SELECT id FROM permission_groups WHERE name = 'SALE - Công nợ')),
('Sửa Công nợ', 's_debts_update', (SELECT id FROM permission_groups WHERE name = 'SALE - Công nợ')),
('Xóa Công nợ', 's_debts_delete', (SELECT id FROM permission_groups WHERE name = 'SALE - Công nợ')),

('Thêm Đơn hàng', 's_orders_create', (SELECT id FROM permission_groups WHERE name = 'SALE - Đơn hàng')),
('Sửa Đơn hàng', 's_orders_update', (SELECT id FROM permission_groups WHERE name = 'SALE - Đơn hàng')),
('Đổi trạng thái Đơn hàng', 's_orders_change_state', (SELECT id FROM permission_groups WHERE name = 'SALE - Đơn hàng')),
('Xóa Đơn hàng', 's_orders_delete', (SELECT id FROM permission_groups WHERE name = 'SALE - Đơn hàng')),

('Thêm Báo giá đơn hàng', 's_qoute_orders_create', (SELECT id FROM permission_groups WHERE name = 'SALE - Báo giá đơn hàng')),
('Sửa Báo giá đơn hàng', 's_qoute_orders_update', (SELECT id FROM permission_groups WHERE name = 'SALE - Báo giá đơn hàng')),
('Đổi trạng thái Báo giá đơn hàng', 's_qoute_orders_change_state', (SELECT id FROM permission_groups WHERE name = 'SALE - Báo giá đơn hàng')),
('Xóa Báo giá đơn hàng', 's_qoute_orders_delete', (SELECT id FROM permission_groups WHERE name = 'SALE - Báo giá đơn hàng')),

('Thêm Lịch hẹn', 's_calendars_create', (SELECT id FROM permission_groups WHERE name = 'SALE - Lịch hẹn')),
('Sửa Lịch hẹn', 's_calendars_update', (SELECT id FROM permission_groups WHERE name = 'SALE - Lịch hẹn')),
('Xóa Lịch hẹn', 's_calendars_delete', (SELECT id FROM permission_groups WHERE name = 'SALE - Lịch hẹn')),

('Thêm Báo giá', 's_quotes_create', (SELECT id FROM permission_groups WHERE name = 'SALE - Báo giá')),
('Sửa Báo giá', 's_quotes_update', (SELECT id FROM permission_groups WHERE name = 'SALE - Báo giá')),
('Xóa Báo giá', 's_quotes_delete', (SELECT id FROM permission_groups WHERE name = 'SALE - Báo giá')),

('Thêm Công việc', 's_jobs_create', (SELECT id FROM permission_groups WHERE name = 'SALE - Công việc')),
('Sửa Công việc', 's_jobs_update', (SELECT id FROM permission_groups WHERE name = 'SALE - Công việc')),
('Xóa Công việc', 's_jobs_delete', (SELECT id FROM permission_groups WHERE name = 'SALE - Công việc')),
('Đổi trạng thái Công việc', 's_jobs_change_state', (SELECT id FROM permission_groups WHERE name = 'SALE - Công việc'));
