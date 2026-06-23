INSERT INTO permissions (name, code, group_id)
VALUES ('Quản lý dự án', 'p_project_manage',
        (SELECT id FROM permission_groups WHERE name = 'PROJECT - Dự án'));

INSERT INTO permissions (name, code, group_id)
VALUES ('Quản lý phiếu đề nghị', 'a_expenses_manage',
        (SELECT id FROM permission_groups WHERE name = 'ACCOUNTANT - Phiếu đề nghị'));



INSERT INTO permission_groups (name)
VALUES ('INDIVIDUAL - Quản lý cá nhân');

INSERT INTO permissions (name, code, group_id)
VALUES ('Quản lý kế hoạch công tác', 'p_work_plans_manage',
        (SELECT id FROM permission_groups WHERE name = 'INDIVIDUAL - Quản lý cá nhân')),
('Quản lý lịch trình di chuyển', 'u_travel_schedules_manage',
        (SELECT id FROM permission_groups WHERE name = 'INDIVIDUAL - Quản lý cá nhân'));

