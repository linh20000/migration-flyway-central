insert into users.permissions(name,code,group_id,modules,sort)
values
    -- Quyền giao câu hỏi
    ('Giao câu hỏi','d_assign_external_question',
     (select id from users.permission_groups where code = 'knowledge_external_question'),
     ARRAY['crm', 'iss'], 1)