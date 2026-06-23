delete
from permission_groups
where name = 'SALE - Chat';



INSERT INTO permission_groups (name)
VALUES ('SALE - Trao đổi đơn hàng');



update permissions
set name     = 'Thên chủ đề',
    group_id = (SELECT id FROM permission_groups WHERE name = 'SALE - Trao đổi đơn hàng')
where code = 's_order_room_create';


update permissions
set name     = 'Sửa chủ đề',
    group_id = (SELECT id FROM permission_groups WHERE name = 'SALE - Trao đổi đơn hàng')
where code = 's_order_room_update';


update permissions
set name     = 'Xoá chủ đề',
    group_id = (SELECT id FROM permission_groups WHERE name = 'SALE - Trao đổi đơn hàng')
where code = 's_order_room_delete';


update permissions
set name     = 'Xem chủ đề',
    group_id = (SELECT id FROM permission_groups WHERE name = 'SALE - Trao đổi đơn hàng')
where code = 's_order_room_view';



update permissions set
name     = 'Xem trao đổi',
    group_id = (SELECT id FROM permission_groups WHERE name = 'SALE - Trao đổi đơn hàng')
where code = 's_order_comment_view';


update permissions
set name     = 'Thêm trao đổi',
    group_id = (SELECT id FROM permission_groups WHERE name = 'SALE - Trao đổi đơn hàng')
where code = 's_order_comment_create';


update permissions
set name     = 'Sửa trao đổi',
    group_id = (SELECT id FROM permission_groups WHERE name = 'SALE - Trao đổi đơn hàng')
where code = 's_order_comment_update';


update permissions
set name     = 'Xoá trao đổi',
    group_id = (SELECT id FROM permission_groups WHERE name = 'SALE - Trao đổi đơn hàng')
where code = 's_order_comment_delete';