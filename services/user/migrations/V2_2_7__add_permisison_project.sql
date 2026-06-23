-- Chèn dữ liệu vào bảng permission_groups
INSERT INTO permission_groups (name) VALUES
('PROJECT - Issue'),
('PROJECT - Cột mốc'),
('PROJECT - Dự án'),
('PROJECT - Công việc'),
('PROJECT - Trạng thái công việc'),
('PROJECT - Loại công việc'),
('PROJECT - Quy trình');

-- Chèn dữ liệu vào bảng permissions
INSERT INTO permissions (name, code, group_id) VALUES
('Thêm Dự án', 'p_project_create', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Dự án')),
('Sửa Dự án', 'p_project_update', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Dự án')),
('Xóa Dự án', 'p_project_delete', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Dự án')),
('Đổi trạng thái Dự án', 'p_project_change_state', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Dự án')),

('Thêm Công việc', 'p_task_create', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Công việc')),
('Sửa Công việc', 'p_task_update', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Công việc')),
('Xóa Công việc', 'p_task_delete', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Công việc')),
('Đổi trạng thái Công việc', 'p_task_change_state', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Công việc')),

('Thêm Trạng thái công việc', 'p_task_state_create', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Trạng thái công việc')),
('Sửa Trạng thái công việc', 'p_task_state_update', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Trạng thái công việc')),
('Xóa Trạng thái công việc', 'p_task_state_delete', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Trạng thái công việc')),

('Thêm Loại công việc', 'p_task_type_create', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Loại công việc')),
('Sửa Loại công việc', 'p_task_type_update', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Loại công việc')),
('Xóa Loại công việc', 'p_task_type_delete', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Loại công việc')),

('Thêm Quy trình', 'p_workflow_create', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Quy trình')),
('Sửa Quy trình', 'p_workflow_update', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Quy trình')),
('Xóa Quy trình', 'p_workflow_delete', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Quy trình')),

('Thêm Issue', 'p_issue_create', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Issue')),
('Sửa Issue', 'p_issue_update', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Issue')),
('Xóa Issue', 'p_issue_delete', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Issue')),

('Thêm Cột mốc', 'p_milestone_create', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Cột mốc')),
('Sửa Cột mốc', 'p_milestone_update', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Cột mốc')),
('Xóa Cột mốc', 'p_milestone_delete', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Cột mốc'));
