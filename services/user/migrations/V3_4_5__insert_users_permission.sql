INSERT INTO users.permissions(name, code, group_id, modules, sort)
VALUES ('Xem doanh thu thực tế', 'p_actual_revenue_view',
        (select id from users.permission_groups where code = 'project_cost'),
        ARRAY['crm', 'iss'], 1),
       ('Xem doanh thu dự kiến', 'p_expected_revenue_view',
        (select id from users.permission_groups where code = 'project_cost'),
        ARRAY['crm', 'iss'], 2);