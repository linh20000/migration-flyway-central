INSERT INTO permission_groups (name, modules)
VALUES ('DASHBOARD - Tổng quan', ARRAY['crm']);

INSERT INTO permissions (name, code, group_id, modules)
VALUES ('Tình hình kinh doanh', 's_dashboard_business',
        (SELECT id FROM permission_groups WHERE name = 'DASHBOARD - Tổng quan'), ARRAY['crm']),
       ('Quan hệ khách hàng', 's_dashboard_client',
        (SELECT id FROM permission_groups WHERE name = 'DASHBOARD - Tổng quan'), ARRAY['crm']),
       ('Nhân viên', 's_dashboard_user', (SELECT id FROM permission_groups WHERE name = 'DASHBOARD - Tổng quan'),
        ARRAY['crm']),
       ('Sản phẩm', 's_dashboard_product', (SELECT id FROM permission_groups WHERE name = 'DASHBOARD - Tổng quan'),
        ARRAY['crm']),
       ('Lịch làm việc', 's_dashboard_work', (SELECT id FROM permission_groups WHERE name = 'DASHBOARD - Tổng quan'),
        ARRAY['crm'])
;

delete
from users.permission_groups
where name = 'DATA - Báo cáo';
delete
from users.permissions
where code = 'd_report_view';

INSERT INTO users.permission_groups (name, modules)
VALUES ('SALE - Báo cáo', ARRAY['crm']);

INSERT INTO users.permissions (name, code, group_id, modules)
VALUES ('Thống kê chiến dịch', 's_report_campaign_effectiveness',
        (SELECT id FROM permission_groups WHERE name = 'SALE - Báo cáo'), ARRAY['crm']),
       ('Thống kê tiềm năng theo nhân viên', 's_report_statistics_lead_by_department',
        (SELECT id FROM permission_groups WHERE name = 'SALE - Báo cáo'), ARRAY['crm']),
       ('
Phân tích tăng trưởng khách hàng', 's_report_analyze_client_growth',
        (SELECT id FROM permission_groups WHERE name = 'SALE - Báo cáo'), ARRAY['crm']),
       ('Thống kê số lượng, giá trị cơ hội theo đối tượng', 's_report_statistics_quantity_and_value',
        (SELECT id FROM permission_groups WHERE name = 'SALE - Báo cáo'), ARRAY['crm']),
       ('Phân tích lý do cơ hội thắng', 's_report_analyze_reasons_opportunity_win',
        (SELECT id FROM permission_groups WHERE name = 'SALE - Báo cáo'), ARRAY['crm']),
       ('Phân tích lý do cơ hội thua', 's_report_analyze_reasons_opportunity_lose',
        (SELECT id FROM permission_groups WHERE name = 'SALE - Báo cáo'), ARRAY['crm']),
       ('Phân tích cơ hội theo giai đoạn', 's_report_analyze_opportunities_by_stage',
        (SELECT id FROM permission_groups WHERE name = 'SALE - Báo cáo'), ARRAY['crm']),
       ('Tổng hợp báo giá theo nhân viên', 's_report_summary_quotes_by_department_and_employee',
        (SELECT id FROM permission_groups WHERE name = 'SALE - Báo cáo'), ARRAY['crm']),
       ('Tổng hợp hợp đồng theo nhân viên', 's_report_summary_contract_by_department_and_employee',
        (SELECT id FROM permission_groups WHERE name = 'SALE - Báo cáo'), ARRAY['crm']),
       ('Thống kê bán hàng theo NVKD, hàng hóa nhiều kỳ', 's_report_statistic_sale_by_business_staff_and_goods',
        (SELECT id FROM permission_groups WHERE name = 'SALE - Báo cáo'), ARRAY['crm'])
;