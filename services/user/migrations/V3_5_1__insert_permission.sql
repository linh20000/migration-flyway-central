INSERT INTO users.permission_groups(name, code, group_id, modules, sort)
VALUES ('Tri thức','knowledge',null,'{iss,crm}',8);

insert into users.permission_groups(name,code,group_id,modules,sort)
values
    -- thêm nhóm chức năng quản trị nội dung --
    ('Quản trị nội dung','document_content_management',
     (select id from users.permission_groups where code = 'knowledge'),
     ARRAY['crm', 'iss'], 0),

    -- thêm nhóm chức năng cài đặt --
    ('Cài đặt','document_setting',
     (select id from users.permission_groups where code = 'knowledge'),
     ARRAY['crm', 'iss'], 0);

insert into users.permission_groups(name,code,group_id,modules,sort)
values
    -- thêm các nhóm chức năng thuộc nhóm chức năng quản trị nội dung --
    ('Yêu cầu bài viết','knowledge_post_request',
     (select id from users.permission_groups where code = 'document_content_management'),
     ARRAY['crm','iss'],0),
    ('Bài viết theo yêu cầu','knowledge_requested_post',
     (select id from users.permission_groups where code = 'document_content_management'),
     ARRAY['crm','iss'],0),
    ('Bài viết độc lập','knowledge_non_request_post',
     (select id from users.permission_groups where code = 'document_content_management'),
     ARRAY['crm','iss'],0),
    ('Câu trả lời cho câu hỏi độc giả','knowledge_external_question',
     (select id from users.permission_groups where code = 'document_content_management'),
     ARRAY['crm','iss'],0),
    ('Câu hỏi & trả lời độc lập','knowledge_internal_question',
     (select id from users.permission_groups where code = 'document_content_management'),
     ARRAY['crm','iss'],0),

    -- thêm các nhóm chức năng thuộc nhóm chức năng cài đặt --
    ('Chủ đề','knowledge_topic',
     (select id from users.permission_groups where code = 'document_setting'),
     ARRAY['crm', 'iss'], 0),
    ('Chuyên mục','knowledge_category',
     (select id from users.permission_groups where code = 'document_setting'),
     ARRAY['crm', 'iss'], 0);

insert into users.permissions(name,code,group_id,modules,sort)
values
    -- các quyền thuộc nhóm yêu cầu bài viết --
    ('Tạo yêu cầu','d_post_request_create',
     (select id from users.permission_groups where code = 'knowledge_post_request'),
     ARRAY['crm', 'iss'], 0),
    ('Sửa yêu cầu','d_post_request_update',
     (select id from users.permission_groups where code = 'knowledge_post_request'),
     ARRAY['crm', 'iss'], 0),
    ('Xoá yêu cầu','d_post_request_delete',
     (select id from users.permission_groups where code = 'knowledge_post_request'),
     ARRAY['crm', 'iss'], 0),
    ('Xem yêu cầu','d_post_request_view',
     (select id from users.permission_groups where code = 'knowledge_post_request'),
     ARRAY['crm', 'iss'], 0),
    ('Giao yêu cầu','d_post_request_assign',
     (select id from users.permission_groups where code = 'knowledge_post_request'),
     ARRAY['crm', 'iss'], 0),

    -- các quyền thuộc nhóm bài viết theo yêu cầu --
    ('Tạo bài viết theo yêu cầu','d_requested_post_create',
     (select id from users.permission_groups where code = 'knowledge_requested_post'),
     ARRAY['crm', 'iss'], 0),
    ('Sửa bài viết theo yêu cầu','d_requested_post_update',
     (select id from users.permission_groups where code = 'knowledge_requested_post'),
     ARRAY['crm', 'iss'], 0),
    ('Xoá bài viết theo yêu cầu','d_requested_post_delete',
     (select id from users.permission_groups where code = 'knowledge_requested_post'),
     ARRAY['crm', 'iss'], 0),
    ('Xem bài viết theo yêu cầu','d_requested_post_view',
     (select id from users.permission_groups where code = 'knowledge_requested_post'),
     ARRAY['crm', 'iss'], 0),
    ('Đăng bài viết theo yêu cầu','d_publish_requested_post',
     (select id from users.permission_groups where code = 'knowledge_requested_post'),
     ARRAY['crm', 'iss'], 0),
    ('Hạ bài viết theo yêu cầu','d_remove_requested_post',
     (select id from users.permission_groups where code = 'knowledge_requested_post'),
     ARRAY['crm', 'iss'], 0),

    -- các quyền thuộc nhóm bài viết độc lập --
    ('Tạo bài viết','d_non_request_post_create',
     (select id from users.permission_groups where code = 'knowledge_non_request_post'),
     ARRAY['crm', 'iss'], 0),
    ('Sửa bài viết','d_non_request_post_update',
     (select id from users.permission_groups where code = 'knowledge_non_request_post'),
     ARRAY['crm', 'iss'], 0),
    ('Xoá bài viết','d_non_request_post_delete',
     (select id from users.permission_groups where code = 'knowledge_non_request_post'),
     ARRAY['crm', 'iss'], 0),
    ('Xem bài viết','d_non_request_post_view',
     (select id from users.permission_groups where code = 'knowledge_non_request_post'),
     ARRAY['crm', 'iss'], 0),
    ('Đăng bài viết','d_publish_non_request_post',
     (select id from users.permission_groups where code = 'knowledge_non_request_post'),
     ARRAY['crm', 'iss'], 0),
    ('Hạ bài viết','d_remove_non_request_post',
     (select id from users.permission_groups where code = 'knowledge_non_request_post'),
     ARRAY['crm', 'iss'], 0),

    -- các quyền thuộc nhóm câu trả lời cho câu hỏi độc giả -- type = external
    ('Tạo câu trả lời','d_external_answer_create',
     (select id from users.permission_groups where code = 'knowledge_external_question'),
     ARRAY['crm', 'iss'], 0),
    ('Sửa câu trả lời','d_external_answer_update',
     (select id from users.permission_groups where code = 'knowledge_external_question'),
     ARRAY['crm', 'iss'], 0),
    ('Xem câu trả lời','d_external_answer_view',
     (select id from users.permission_groups where code = 'knowledge_external_question'),
     ARRAY['crm', 'iss'], 0),
    ('Xóa câu trả lời','d_external_answer_delete',
     (select id from users.permission_groups where code = 'knowledge_external_question'),
     ARRAY['crm', 'iss'], 0),
    ('Đăng câu trả lời','d_publish_external_answer',
     (select id from users.permission_groups where code = 'knowledge_external_question'),
     ARRAY['crm', 'iss'], 0),
    ('Hạ câu trả lời','d_remove_external_answer',
     (select id from users.permission_groups where code = 'knowledge_external_question'),
     ARRAY['crm', 'iss'], 0),

    -- các quyền thuộc nhóm câu trả lời cho câu hỏi & trả lời độc lập -- type = internal
    ('Tạo câu trả lời','d_internal_answer_create',
     (select id from users.permission_groups where code = 'knowledge_internal_question'),
     ARRAY['crm', 'iss'], 0),
    ('Sửa câu trả lời','d_internal_answer_update',
     (select id from users.permission_groups where code = 'knowledge_internal_question'),
     ARRAY['crm', 'iss'], 0),
    ('Xem câu trả lời','d_internal_answer_view',
     (select id from users.permission_groups where code = 'knowledge_internal_question'),
     ARRAY['crm', 'iss'], 0),
    ('Xóa câu trả lời','d_internal_answer_delete',
     (select id from users.permission_groups where code = 'knowledge_internal_question'),
     ARRAY['crm', 'iss'], 0),
    ('Đăng câu trả lời','d_publish_internal_answer',
     (select id from users.permission_groups where code = 'knowledge_internal_question'),
     ARRAY['crm', 'iss'], 0),
    ('Hạ câu trả lời','d_remove_internal_answer',
     (select id from users.permission_groups where code = 'knowledge_internal_question'),
     ARRAY['crm', 'iss'], 0),

    -- các quyền thuộc nhóm chủ đề --
    ('Tạo chủ đề', 'd_topic_create',
     (select id from users.permission_groups where code = 'knowledge_topic'),
     ARRAY['crm', 'iss'], 0),
    ('Sửa chủ đề', 'd_topic_update',
     (select id from users.permission_groups where code = 'knowledge_topic'),
     ARRAY['crm', 'iss'], 0),
    ('Xem chủ đề', 'd_topic_view',
     (select id from users.permission_groups where code = 'knowledge_topic'),
     ARRAY['crm', 'iss'], 0),
    ('Xóa chủ đề', 'd_topic_delete',
     (select id from users.permission_groups where code = 'knowledge_topic'),
     ARRAY['crm', 'iss'], 0),

    -- các quyền thuộc nhóm chuyên mục --
    ('Tạo chuyên mục', 'd_category_create',
     (select id from users.permission_groups where code = 'knowledge_category'),
     ARRAY['crm', 'iss'], 0),
    ('Sửa chuyên mục', 'd_category_update',
     (select id from users.permission_groups where code = 'knowledge_category'),
     ARRAY['crm', 'iss'], 0),
    ('Xem chuyên mục', 'd_category_view',
     (select id from users.permission_groups where code = 'knowledge_category'),
     ARRAY['crm', 'iss'], 0),
    ('Xóa chuyên mục', 'd_category_delete',
     (select id from users.permission_groups where code = 'knowledge_category'),
     ARRAY['crm', 'iss'], 0);





