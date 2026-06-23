-- Chèn dữ liệu vào bảng permission_groups
INSERT INTO permission_groups (name) VALUES
('MARKETING - Kế hoạch kinh doanh'),
('MARKETING - Người thực hiện'),
('MARKETING - Công việc'),
('MARKETING - Báo cáo công việc'),
('MARKETING - Kpi'),
('MARKETING - Nghiên cứu thị trường'),
('MARKETING - Lịch trình di chuyển');

-- Chèn dữ liệu vào bảng permissions
INSERT INTO permissions (name, code, group_id) VALUES
('Thêm Kế hoạch kinh doanh', 'm_business_plans_create', (SELECT id FROM permission_groups WHERE name = 'MARKETING - Kế hoạch kinh doanh')),
('Sửa Kế hoạch kinh doanh', 'm_business_plans_update', (SELECT id FROM permission_groups WHERE name = 'MARKETING - Kế hoạch kinh doanh')),
('Xóa Kế hoạch kinh doanh', 'm_business_plans_delete', (SELECT id FROM permission_groups WHERE name = 'MARKETING - Kế hoạch kinh doanh')),
('Đổi trạng thái Kế hoạch kinh doanh', 'm_business_plans_state', (SELECT id FROM permission_groups WHERE name = 'MARKETING - Kế hoạch kinh doanh')),

('Thêm Người thực hiện', 'm_implementers_create', (SELECT id FROM permission_groups WHERE name = 'MARKETING - Người thực hiện')),
('Sửa Người thực hiện', 'm_implementers_update', (SELECT id FROM permission_groups WHERE name = 'MARKETING - Người thực hiện')),
('Xóa Người thực hiện', 'm_implementers_delete', (SELECT id FROM permission_groups WHERE name = 'MARKETING - Người thực hiện')),

('Thêm Kpi', 'm_kpis_create', (SELECT id FROM permission_groups WHERE name = 'MARKETING - Kpi')),
('Sửa Kpi', 'm_kpis_update', (SELECT id FROM permission_groups WHERE name = 'MARKETING - Kpi')),

('Thêm Nghiên cứu thị trường', 'm_market_research_create', (SELECT id FROM permission_groups WHERE name = 'MARKETING - Nghiên cứu thị trường')),
('Sửa Nghiên cứu thị trường', 'm_market_research_update', (SELECT id FROM permission_groups WHERE name = 'MARKETING - Nghiên cứu thị trường')),
('Xóa Nghiên cứu thị trường', 'm_market_research_delete', (SELECT id FROM permission_groups WHERE name = 'MARKETING - Nghiên cứu thị trường')),
('Đổi trạng thái Nghiên cứu thị trường', 'm_market_research_change_status', (SELECT id FROM permission_groups WHERE name = 'MARKETING - Nghiên cứu thị trường')),

('Thêm Báo cáo công việc', 'm_job_process_create', (SELECT id FROM permission_groups WHERE name = 'MARKETING - Báo cáo công việc')),
('Sửa Báo cáo công việc', 'm_job_process_update', (SELECT id FROM permission_groups WHERE name = 'MARKETING - Báo cáo công việc')),
('Xóa Báo cáo công việc', 'm_job_process_delete', (SELECT id FROM permission_groups WHERE name = 'MARKETING - Báo cáo công việc')),
('Đổi trạng thái Báo cáo công việc', 'm_job_process_state', (SELECT id FROM permission_groups WHERE name = 'MARKETING - Báo cáo công việc')),
('Thêm đánh giá Báo cáo công việc', 'm_job_process_create_comments', (SELECT id FROM permission_groups WHERE name = 'MARKETING - Báo cáo công việc')),
('Sửa đánh giá Báo cáo công việc', 'm_job_process_update_comments', (SELECT id FROM permission_groups WHERE name = 'MARKETING - Báo cáo công việc')),
('Xóa đánh giá Báo cáo công việc', 'm_job_process_delete_comments', (SELECT id FROM permission_groups WHERE name = 'MARKETING - Báo cáo công việc')),

('Thêm Lịch trình di chuyển', 'm_travel_schedules_create', (SELECT id FROM permission_groups WHERE name = 'MARKETING - Lịch trình di chuyển')),
('Sửa Lịch trình di chuyển', 'm_travel_schedules_update', (SELECT id FROM permission_groups WHERE name = 'MARKETING - Lịch trình di chuyển')),
('Xóa Lịch trình di chuyển', 'm_travel_schedules_delete', (SELECT id FROM permission_groups WHERE name = 'MARKETING - Lịch trình di chuyển')),

('Thêm Công việc', 'm_jobs_create', (SELECT id FROM permission_groups WHERE name = 'MARKETING - Công việc')),
('Sửa Công việc', 'm_jobs_update', (SELECT id FROM permission_groups WHERE name = 'MARKETING - Công việc')),
('Xóa Công việc', 'm_jobs_delete', (SELECT id FROM permission_groups WHERE name = 'MARKETING - Công việc')),
('Đổi trạng thái Công việc', 'm_jobs_change_state', (SELECT id FROM permission_groups WHERE name = 'MARKETING - Công việc'));
