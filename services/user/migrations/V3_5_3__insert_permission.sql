insert into users.permissions(name,code,group_id,modules,sort)
values
    -- Quyền xem lịch sử hoạt động yêu cầu bài viết
    ('Xem lịch sử hoạt động','d_view_activity_history_post_request',
     (select id from users.permission_groups where code = 'knowledge_post_request'),
     ARRAY['crm', 'iss'], 1),

    -- Quyền xem lịch sử hoạt động bài viết theo yêu cầu
    ('Xem lịch sử hoạt động','d_view_activity_history_requested_post',
     (select id from users.permission_groups where code = 'knowledge_requested_post'),
     ARRAY['crm', 'iss'], 1),

    -- Quyền xem lịch sử hoạt động câu trả lời cho câu hỏi & câu trả lời độc giả
    ('Xem lịch sử hoạt động','d_view_activity_history_external_question',
     (select id from users.permission_groups where code = 'knowledge_external_question'),
     ARRAY['crm', 'iss'], 1),

    -- Quyền xem lịch sử hoạt động câu trả lời cho câu hỏi & trả lời độc lập
    ('Xem lịch sử hoạt động','d_view_activity_history_internal_question',
     (select id from users.permission_groups where code = 'knowledge_internal_question'),
     ARRAY['crm', 'iss'], 1),

    --Quyền từ chối câu hỏi độc giả
    ('Từ chối câu hỏi độc giả','d_reject_internal_question',
     (select id from users.permission_groups where code = 'knowledge_external_question'),
     ARRAY['crm', 'iss'], -1);


update users.permission_groups set  name = 'Câu hỏi & trả lời của độc giả'
                         where code = 'knowledge_external_question';

update users.permission_groups set name = 'Bài viết tự tạo'
                         where code = 'knowledge_non_request_post';

update users.permission_groups set name = 'Câu hỏi & trả lời tự tạo'
                         where code = 'knowledge_internal_question';



