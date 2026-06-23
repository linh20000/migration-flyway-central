INSERT INTO permission_groups (name, modules)
VALUES ('USER - Ca làm việc', ARRAY['iss']),
       ('USER - Loại nghỉ', ARRAY['iss']),
       ('USER - Loại giải trình', ARRAY['iss']),
       ('USER - Báo cáo', ARRAY['iss']);

-- Chèn dữ liệu vào bảng permissions
INSERT INTO permissions (name, code, group_id, modules)
VALUES ('Xem ca làm việc', 'u_shift_view', (SELECT id FROM permission_groups WHERE name = 'USER - Ca làm việc'),
        ARRAY['iss']),
       ('Thêm ca làm việc', 'u_shift_add', (SELECT id FROM permission_groups WHERE name = 'USER - Ca làm việc'),
        ARRAY['iss']),
       ('Sửa ca làm việc', 'u_shift_update', (SELECT id FROM permission_groups WHERE name = 'USER - Ca làm việc'),
        ARRAY['iss']),
       ('Xoá ca làm việc', 'u_shift_delete', (SELECT id FROM permission_groups WHERE name = 'USER - Ca làm việc'),
        ARRAY['iss']),

       ('Xem loại nghỉ', 'u_leave_reason_view', (SELECT id FROM permission_groups WHERE name = 'USER - Loại nghỉ'),
        ARRAY['iss']),
       ('Thêm loại nghỉ', 'u_leave_reason_add', (SELECT id FROM permission_groups WHERE name = 'USER - Loại nghỉ'),
        ARRAY['iss']),
       ('Sửa loại nghỉ', 'u_leave_reason_update', (SELECT id FROM permission_groups WHERE name = 'USER - Loại nghỉ'),
        ARRAY['iss']),
       ('Xoá loại nghỉ', 'u_leave_reason_delete', (SELECT id FROM permission_groups WHERE name = 'USER - Loại nghỉ'),
        ARRAY['iss']),

       ('Xem loại giải trình', 'u_explain_reason_view',
        (SELECT id FROM permission_groups WHERE name = 'USER - Loại giải trình'), ARRAY['iss']),
       ('Thêm loại giải trình', 'u_explain_reason_add',
        (SELECT id FROM permission_groups WHERE name = 'USER - Loại giải trình'), ARRAY['iss']),
       ('Sửa loại giải trình', 'u_explain_reason_update',
        (SELECT id FROM permission_groups WHERE name = 'USER - Loại giải trình'), ARRAY['iss']),
       ('Xoá loại giải trình', 'u_explain_reason_delete',
        (SELECT id FROM permission_groups WHERE name = 'USER - Loại giải trình'), ARRAY['iss']),

       ('Xem báo cáo duyệt công', 'u_petition_report_view',
        (SELECT id FROM permission_groups WHERE name = 'USER - Báo cáo'), ARRAY['iss']),
       ('Xuất file báo cáo duyệt công', 'u_petition_report_export',
        (SELECT id FROM permission_groups WHERE name = 'USER - Báo cáo'), ARRAY['iss']);