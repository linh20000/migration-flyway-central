INSERT INTO users.permission_groups(
   name, modules, sort, group_id)
    VALUES ('Chấm công', ARRAY['iss'], 1, (select id from users.permission_groups where name = 'Hành chính nhân sự'));

INSERT INTO users.permission_groups(
   name, modules, sort, group_id)
    VALUES ('Quản lý OTP', ARRAY['iss'], 1, (select id from users.permission_groups where name = 'Cài đặt' and group_id = (select id from users.permission_groups where name = 'Hành chính nhân sự')));

INSERT INTO users.permission_groups(
    name, modules, sort, group_id)
VALUES ('Quản lý thiết bị', ARRAY['iss'], 1, (select id from users.permission_groups where name = 'Cài đặt' and group_id = (select id from users.permission_groups where name = 'Hành chính nhân sự')));

INSERT INTO users.permission_groups(
    name, modules, sort, group_id)
VALUES ('Địa điểm làm việc', ARRAY['iss'], 1, (select id from users.permission_groups where name = 'Cài đặt' and group_id = (select id from users.permission_groups where name = 'Hành chính nhân sự')));

-- Chèn dữ liệu vào bảng permissions
INSERT INTO permissions (name, code, group_id, modules)
VALUES
    ('Quản lý lịch sử chấm công', 'u_timekeeping_history_manage', (SELECT id FROM permission_groups WHERE name = 'Chấm công'), ARRAY['iss']),
    ('Báo cáo chấm công', 'u_timekeeping_entry_manage', (SELECT id FROM permission_groups WHERE name = 'Chấm công'), ARRAY['iss']),
    ('Xuất file báo báo chấm công', 'u_timekeeping_entry_export', (SELECT id FROM permission_groups WHERE name = 'Chấm công'), ARRAY['iss']),
    ('Xem mã OTP', 'u_timekeeping_otp_view', (SELECT id FROM permission_groups WHERE name = 'Quản lý OTP'), ARRAY['iss']),
    ('Thêm mã OTP', 'u_timekeeping_otp_create', (SELECT id FROM permission_groups WHERE name = 'Quản lý OTP'), ARRAY['iss']),
    ('Xoá mã OTP', 'u_timekeeping_otp_delete', (SELECT id FROM permission_groups WHERE name = 'Quản lý OTP'), ARRAY['iss']),

    ('Danh sách thiết bị', 'u_timekeeping_device_view', (SELECT id FROM permission_groups WHERE name = 'Quản lý thiết bị'), ARRAY['iss']),
    ('Đổi trạng thái thiết bị', 'u_timekeeping_device_status', (SELECT id FROM permission_groups WHERE name = 'Quản lý thiết bị'), ARRAY['iss']),

    ('Xem địa điểm làm việc', 'u_workplace_view', (SELECT id FROM permission_groups WHERE name = 'Địa điểm làm việc'), ARRAY['iss']),
    ('Thêm địa điểm làm việc', 'u_workplace_create', (SELECT id FROM permission_groups WHERE name = 'Địa điểm làm việc'), ARRAY['iss']),
    ('Sửa địa điểm làm việc', 'u_workplace_update', (SELECT id FROM permission_groups WHERE name = 'Địa điểm làm việc'), ARRAY['iss']),
    ('Trạng thái địa điểm làm việc', 'u_workplace_status', (SELECT id FROM permission_groups WHERE name = 'Địa điểm làm việc'), ARRAY['iss']),
    ('Xoá địa điểm làm việc', 'u_workplace_delete', (SELECT id FROM permission_groups WHERE name = 'Địa điểm làm việc'), ARRAY['iss'])
;