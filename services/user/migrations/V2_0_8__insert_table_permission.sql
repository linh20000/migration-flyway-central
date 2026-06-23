-- Chèn dữ liệu vào bảng permissions
INSERT INTO permissions (name, code, group_id) VALUES
('Xem Kế hoạch kinh doanh', 'm_business_plans_view', (SELECT id FROM permission_groups WHERE name = 'MARKETING - Kế hoạch kinh doanh')),

('Xem Người thực hiện', 'm_implementers_view', (SELECT id FROM permission_groups WHERE name = 'MARKETING - Người thực hiện')),

('Xem Kpi', 'm_kpis_view', (SELECT id FROM permission_groups WHERE name = 'MARKETING - Kpi')),

('Xem Nghiên cứu thị trường', 'm_market_research_view', (SELECT id FROM permission_groups WHERE name = 'MARKETING - Nghiên cứu thị trường')),

('Xem Báo cáo công việc', 'm_job_process_view', (SELECT id FROM permission_groups WHERE name = 'MARKETING - Báo cáo công việc')),

('Xem Lịch trình di chuyển', 'm_travel_schedules_view', (SELECT id FROM permission_groups WHERE name = 'MARKETING - Lịch trình di chuyển')),

('Xem Công việc', 'm_jobs_view', (SELECT id FROM permission_groups WHERE name = 'MARKETING - Công việc'));
