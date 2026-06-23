INSERT INTO permission_groups (name, modules)
VALUES
    ('INDIVIDUAL - Ca làm việc', ARRAY['iss']),
    ('INDIVIDUAL - Loại nghỉ', ARRAY['iss']),
    ('INDIVIDUAL - Loại giải trình', ARRAY['iss']),
    ('REPORT - Báo cáo', ARRAY['iss']);

delete
from permission_groups
where name in ('USER - Ca làm việc',
               'USER - Loại nghỉ',
               'USER - Loại giải trình',
               'USER - Báo cáo');

update permissions set group_id = (SELECT id FROM permission_groups WHERE name = 'INDIVIDUAL - Ca làm việc') where code = 'u_shift_view';
update permissions set group_id = (SELECT id FROM permission_groups WHERE name = 'INDIVIDUAL - Ca làm việc') where code = 'u_shift_add';
update permissions set group_id = (SELECT id FROM permission_groups WHERE name = 'INDIVIDUAL - Ca làm việc') where code = 'u_shift_update';
update permissions set group_id = (SELECT id FROM permission_groups WHERE name = 'INDIVIDUAL - Ca làm việc') where code = 'u_shift_delete';
update permissions set group_id = (SELECT id FROM permission_groups WHERE name = 'INDIVIDUAL - Loại nghỉ') where code = 'u_leave_reason_view';
update permissions set group_id = (SELECT id FROM permission_groups WHERE name = 'INDIVIDUAL - Loại nghỉ') where code = 'u_leave_reason_add';
update permissions set group_id = (SELECT id FROM permission_groups WHERE name = 'INDIVIDUAL - Loại nghỉ') where code = 'u_leave_reason_update';
update permissions set group_id = (SELECT id FROM permission_groups WHERE name = 'INDIVIDUAL - Loại nghỉ') where code = 'u_leave_reason_delete';
update permissions set group_id = (SELECT id FROM permission_groups WHERE name = 'INDIVIDUAL - Loại giải trình') where code = 'u_explain_reason_view';
update permissions set group_id = (SELECT id FROM permission_groups WHERE name = 'INDIVIDUAL - Loại giải trình') where code = 'u_explain_reason_add';
update permissions set group_id = (SELECT id FROM permission_groups WHERE name = 'INDIVIDUAL - Loại giải trình') where code = 'u_explain_reason_update';
update permissions set group_id = (SELECT id FROM permission_groups WHERE name = 'INDIVIDUAL - Loại giải trình') where code = 'u_explain_reason_delete';
update permissions set group_id = (SELECT id FROM permission_groups WHERE name = 'REPORT - Báo cáo') where code = 'u_petition_report_view';
update permissions set group_id = (SELECT id FROM permission_groups WHERE name = 'REPORT - Báo cáo') where code = 'u_petition_report_export';