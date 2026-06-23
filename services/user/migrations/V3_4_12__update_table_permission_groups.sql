BEGIN TRANSACTION;
-- Thêm nhóm quyền 'Lịch làm việc'
INSERT INTO users.permission_groups (name, modules, sort, group_id, code)
VALUES (
           'Lịch Làm Việc',
           ARRAY['iss', 'crm'],
           (
               SELECT (sort + 0.1)
               FROM users.permission_groups
               WHERE group_id = (
                   SELECT id
                   FROM users.permission_groups
                   WHERE code = 'project'
               )
               ORDER BY sort DESC
               OFFSET 1 LIMIT 1
       ),
       (
           SELECT id
           FROM users.permission_groups
           WHERE code = 'project'
       ),
    'project_calendar'
    );

-- Thêm nhóm quyền 'Kế hoạch công tác'
INSERT INTO users.permission_groups (name, modules, sort, group_id, code)
VALUES (
           'Kế Hoạch Công Tác',
           ARRAY['iss', 'crm'],
           (
               SELECT (sort + 0.1)
               FROM users.permission_groups
               WHERE group_id = (
                   SELECT id
                   FROM users.permission_groups
                   WHERE code = 'individual'
               )
               ORDER BY sort DESC
               OFFSET 1 LIMIT 1
       ),
       (
           SELECT id
           FROM users.permission_groups
           WHERE code = 'individual'
       ),
    'individual_work_plan'
    );

-- Cập nhật nhóm quyền cho 'p_work_plans_manage'
UPDATE users.permissions
SET group_id = (
    SELECT id
    FROM users.permission_groups
    WHERE code = 'individual_work_plan'
), name = 'Quản Lý KHCT Đề Xuất', sort = 0, code = 'p_work_plans_propose_manage'
WHERE code = 'p_work_plans_manage';

-- Thêm quyền liên quan đến 'Lịch làm việc'
INSERT INTO users.permissions (name, code, group_id, modules, sort)
VALUES
    (
        'Xuất Lịch Làm Việc',
        'p_calendar_export',
        (
            SELECT id
            FROM users.permission_groups
            WHERE code = 'project_calendar'
        ),
        ARRAY['crm', 'iss'],
        1
    ),
    (
        'Xem Lịch Làm Việc',
        'p_calendar_view',
        (
            SELECT id
            FROM users.permission_groups
            WHERE code = 'project_calendar'
        ),
        ARRAY['crm', 'iss'],
        0
    );

-- Thêm quyền liên quan đến 'Kế hoạch công tác giao xuống'
INSERT INTO users.permissions (name, code, group_id, modules, sort)
VALUES
    (
        'Thêm KHCT Giao Xuống',
        'i_work_plan_downward_create',
        (
            SELECT id
            FROM users.permission_groups
            WHERE code = 'individual_work_plan'
        ),
        ARRAY['crm', 'iss'],
        2
    ),
    (
        'Xem KHCT Giao Xuống',
        'i_work_plan_downward_view',
        (
            SELECT id
            FROM users.permission_groups
            WHERE code = 'individual_work_plan'
        ),
        ARRAY['crm', 'iss'],
        1
    ),
    (
        'Sửa KHCT Giao Xuống',
        'i_work_plan_downward_update',
        (
            SELECT id
            FROM users.permission_groups
            WHERE code = 'individual_work_plan'
        ),
        ARRAY['crm', 'iss'],
        3
    ),
    (
        'Xóa KHCT Giao Xuống',
        'i_work_plan_downward_delete',
        (
            SELECT id
            FROM users.permission_groups
            WHERE code = 'individual_work_plan'
        ),
        ARRAY['crm', 'iss'],
        4
    ),
    (
        'Quản Lý KHCT Giao Xuống',
        'i_work_plan_downward_manage',
        (
            SELECT id
            FROM users.permission_groups
            WHERE code = 'individual_work_plan'
        ),
        ARRAY['crm', 'iss'],
        5
    );

COMMIT;
