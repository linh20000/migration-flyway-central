INSERT INTO users.permission_groups(name,code,group_id,modules,sort)
VALUES ('Bình luận','document_comment',
        (select id from users.permission_groups where code = 'knowledge'),
        ARRAY['crm', 'iss'], 1);

INSERT INTO users.permission_groups(name,code,group_id,modules,sort)
VALUES
    ('Bình luận bài viết','document_post_comment',
        (select id from users.permission_groups where code = 'document_comment'),
        ARRAY['crm', 'iss'], 0),
    ('Bình luận câu hỏi','document_question_comment',
     (select id from users.permission_groups where code = 'document_comment'),
     ARRAY['crm', 'iss'], 0);

INSERT INTO users.permissions(name,code,group_id,modules,sort)
VALUES
    ('Thêm bình luận','d_create_post_comment',
     (select id from users.permission_groups where code = 'document_post_comment'),
     ARRAY['crm', 'iss'], 0),
    ('Sửa bình luận','d_update_post_comment',
     (select id from users.permission_groups where code = 'document_post_comment'),
     ARRAY['crm', 'iss'], 0),
    ('Xóa bình luận','d_delete_post_comment',
     (select id from users.permission_groups where code = 'document_post_comment'),
     ARRAY['crm', 'iss'], 0),


    ('Thêm bình luận','d_create_question_comment',
     (select id from users.permission_groups where code = 'document_question_comment'),
     ARRAY['crm', 'iss'], 0),
    ('Sửa bình luận','d_update_question_comment',
     (select id from users.permission_groups where code = 'document_question_comment'),
     ARRAY['crm', 'iss'], 0),
    ('Xóa bình luận','d_delete_question_comment',
     (select id from users.permission_groups where code = 'document_question_comment'),
     ARRAY['crm', 'iss'], 0);
