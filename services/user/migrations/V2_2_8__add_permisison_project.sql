-- Chèn dữ liệu vào bảng permission_groups
INSERT INTO permission_groups (name) VALUES
('PROJECT - Tệp tin'),
('CHAT - Chủ đề'),
('CHAT - Comment');

-- Chèn dữ liệu vào bảng permissions
INSERT INTO permissions (name, code, group_id) VALUES
('Thêm Tệp tin', 'p_file_create', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Tệp tin')),
('Sửa Tệp tin', 'p_file_update', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Tệp tin')),
('Xóa Tệp tin', 'p_file_delete', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Tệp tin')),
('Xem Tệp tin', 'p_file_view', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Tệp tin')),

('Thêm Chủ đề', 'chat_room_create', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Chủ đề')),
('Sửa Chủ đề', 'chat_room_update', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Chủ đề')),
('Xóa Chủ đề', 'chat_room_delete', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Chủ đề')),
('Xem Chủ đề', 'chat_room_view', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Chủ đề')),

('Thêm Comment', 'chat_comment_create', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Comment')),
('Sửa Comment', 'chat_comment_update', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Comment')),
('Xóa Comment', 'chat_comment_delete', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Comment')),
('Xem Comment', 'chat_comment_view', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Comment'));


INSERT INTO permissions (name, code, group_id) VALUES
('Xem Dự án', 'p_project_view', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Dự án')),

('Xem Công việc', 'p_task_view', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Công việc')),

('Xem Trạng thái công việc', 'p_task_state_view', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Trạng thái công việc')),

('Xem Loại công việc', 'p_task_type_view', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Loại công việc')),

('Xem Quy trình', 'p_workflow_view', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Quy trình')),

('Xem Issue', 'p_issue_view', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Issue')),

('Xem Cột mốc', 'p_milestone_view', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Cột mốc'));

