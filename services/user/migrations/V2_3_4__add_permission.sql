INSERT INTO permission_groups (name)
VALUES ('SALE - Trao đổi khách hàng');

update permissions
set name     = 'Xem trao đổi',
    group_id = (SELECT id FROM permission_groups WHERE name = 'SALE - Trao đổi khách hàng')
where code = 's_chat_view';
update permissions
set name     = 'Thêm trao đổi',
    group_id = (SELECT id FROM permission_groups WHERE name = 'SALE - Trao đổi khách hàng')
where code = 's_chat_create';
update permissions
set name     = 'Sửa trao đổi',
    group_id = (SELECT id FROM permission_groups WHERE name = 'SALE - Trao đổi khách hàng')
where code = 's_chat_update';
update permissions
set name     = 'Xoá trao đổi',
    group_id = (SELECT id FROM permission_groups WHERE name = 'SALE - Trao đổi khách hàng')
where code = 's_chat_delete';


delete
from permissions
where code = 's_chat_change_state';

INSERT INTO permissions (name, code, group_id)
VALUES ('Xem chủ đề', 's_room_view',
        (SELECT id FROM permission_groups WHERE name = 'SALE - Trao đổi khách hàng')),
       ('Thêm chủ đề', 's_room_create',
        (SELECT id FROM permission_groups WHERE name = 'SALE - Trao đổi khách hàng')),
       ('Sửa chủ đề', 's_room_update',
        (SELECT id FROM permission_groups WHERE name = 'SALE - Trao đổi khách hàng')),
       ('Xoá chủ đề', 's_room_delete',
        (SELECT id FROM permission_groups WHERE name = 'SALE - Trao đổi khách hàng'));
