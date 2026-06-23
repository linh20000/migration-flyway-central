
-- Chèn dữ liệu vào bảng permissions
INSERT INTO permissions (name, code, group_id) VALUES
('Xem Kế hoạch kinh doanh', 's_business_plans_view', (SELECT id FROM permission_groups WHERE name = 'SALE - Kế hoạch kinh doanh')),

('Xem Người thực hiện', 's_implementers_view', (SELECT id FROM permission_groups WHERE name = 'SALE - Người thực hiện')),

('Xem Kpi', 's_kpis_view', (SELECT id FROM permission_groups WHERE name = 'SALE - Kpi')),

('Xem Nghiên cứu thị trường', 's_market_research_view', (SELECT id FROM permission_groups WHERE name = 'SALE - Nghiên cứu thị trường')),

('Xem Báo cáo công việc', 's_job_process_view', (SELECT id FROM permission_groups WHERE name = 'SALE - Báo cáo công việc')),

('Xem Chat', 's_chat_view', (SELECT id FROM permission_groups WHERE name = 'SALE - Chat')),

('Xem Chăm sóc khách hàng', 's_client_analysis_view', (SELECT id FROM permission_groups WHERE name = 'SALE - Chăm sóc khách hàng')),

('Xem Hợp đồng', 's_contracts_view', (SELECT id FROM permission_groups WHERE name = 'SALE - Hợp đồng')),

('Xem Công nợ', 's_debts_view', (SELECT id FROM permission_groups WHERE name = 'SALE - Công nợ')),

('Xem Đơn hàng', 's_orders_view', (SELECT id FROM permission_groups WHERE name = 'SALE - Đơn hàng')),

('Xem Báo giá đơn hàng', 's_qoute_orders_view', (SELECT id FROM permission_groups WHERE name = 'SALE - Báo giá đơn hàng')),

('Xem Lịch hẹn', 's_calendars_view', (SELECT id FROM permission_groups WHERE name = 'SALE - Lịch hẹn')),

('Xem Báo giá', 's_quotes_view', (SELECT id FROM permission_groups WHERE name = 'SALE - Báo giá')),

('Xem Công việc', 's_jobs_view', (SELECT id FROM permission_groups WHERE name = 'SALE - Công việc'));
