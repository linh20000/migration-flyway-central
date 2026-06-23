update permissions
set name     = 'Thêm chủ đề',
    group_id = (SELECT id FROM permission_groups WHERE name = 'PROJECT - Trao đổi dự án')
where code = 'p_chat_room_create';
