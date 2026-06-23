INSERT INTO users.permissions(name,code,group_id,modules,sort)
VALUES
    ('Xem toàn bộ lịch sử duyệt','s_view_main_approval_process',
     (select id from users.permission_groups where name = 'Duyệt'),
     ARRAY['crm', 'iss'], 1),
    ('Xem toàn bộ lịch sử kiểm tra','s_view_pair_approval_process',
     (select id from users.permission_groups where name = 'Duyệt'),
     ARRAY['crm', 'iss'], 1);