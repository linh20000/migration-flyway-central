delete from permissions where code in ('chat_room_create',
    'chat_room_update',
    'chat_room_delete',
    'chat_room_view',
    'chat_comment_create',
    'chat_comment_update',
    'chat_comment_delete',
    'chat_comment_view');
-- Chèn dữ liệu vào bảng permission_groups
INSERT INTO permission_groups (name) VALUES
('PROJECT - Chủ đề'),
('PROJECT - Comment');

-- Chèn dữ liệu vào bảng permissions
INSERT INTO permissions (name, code, group_id) VALUES

('Thêm Chủ đề', 'chat_room_create', (SELECT id FROM permission_groups WHERE name = 'CHAT - Chủ đề')),
('Sửa Chủ đề', 'chat_room_update', (SELECT id FROM permission_groups WHERE name = 'CHAT - Chủ đề')),
('Xóa Chủ đề', 'chat_room_delete', (SELECT id FROM permission_groups WHERE name = 'CHAT - Chủ đề')),
('Xem Chủ đề', 'chat_room_view', (SELECT id FROM permission_groups WHERE name = 'CHAT - Chủ đề')),

('Thêm Comment', 'chat_comment_create', (SELECT id FROM permission_groups WHERE name = 'CHAT - Comment')),
('Sửa Comment', 'chat_comment_update', (SELECT id FROM permission_groups WHERE name = 'CHAT - Comment')),
('Xóa Comment', 'chat_comment_delete', (SELECT id FROM permission_groups WHERE name = 'CHAT - Comment')),
('Xem Comment', 'chat_comment_view', (SELECT id FROM permission_groups WHERE name = 'CHAT - Comment')),

('Thêm Chủ đề', 'p_chat_room_create', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Chủ đề')),
('Sửa Chủ đề', 'p_chat_room_update', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Chủ đề')),
('Xóa Chủ đề', 'p_chat_room_delete', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Chủ đề')),
('Xem Chủ đề', 'p_chat_room_view', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Chủ đề')),

('Thêm Comment', 'p_chat_comment_create', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Comment')),
('Sửa Comment', 'p_chat_comment_update', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Comment')),
('Xóa Comment', 'p_chat_comment_delete', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Comment')),
('Xem Comment', 'p_chat_comment_view', (SELECT id FROM permission_groups WHERE name = 'PROJECT - Comment'));


