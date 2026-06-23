
INSERT INTO permission_groups (name)
VALUES ('PROJECT - Trao đổi dự án');



update permissions
set name     = 'Thên chủ đề',
    group_id = (SELECT id FROM permission_groups WHERE name = 'PROJECT - Trao đổi dự án')
where code = 'p_chat_room_create';


update permissions
set name     = 'Sửa chủ đề',
    group_id = (SELECT id FROM permission_groups WHERE name = 'PROJECT - Trao đổi dự án')
where code = 'p_chat_room_update';


update permissions
set name     = 'Xoá chủ đề',
    group_id = (SELECT id FROM permission_groups WHERE name = 'PROJECT - Trao đổi dự án')
where code = 'p_chat_room_delete';


update permissions
set name     = 'Xem chủ đề',
    group_id = (SELECT id FROM permission_groups WHERE name = 'PROJECT - Trao đổi dự án')
where code = 'p_chat_room_view';



update permissions set
name     = 'Xem trao đổi',
    group_id = (SELECT id FROM permission_groups WHERE name = 'PROJECT - Trao đổi dự án')
where code = 'p_chat_comment_view';


update permissions
set name     = 'Thêm trao đổi',
    group_id = (SELECT id FROM permission_groups WHERE name = 'PROJECT - Trao đổi dự án')
where code = 'p_chat_comment_create';


update permissions
set name     = 'Sửa trao đổi',
    group_id = (SELECT id FROM permission_groups WHERE name = 'PROJECT - Trao đổi dự án')
where code = 'p_chat_comment_update';


update permissions
set name     = 'Xoá trao đổi',
    group_id = (SELECT id FROM permission_groups WHERE name = 'PROJECT - Trao đổi dự án')
where code = 'p_chat_comment_delete';


delete
from permission_groups
where name = 'PROJECT - Chủ đề';

delete
from permission_groups
where name = 'PROJECT - Comment';