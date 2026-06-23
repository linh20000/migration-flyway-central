INSERT INTO permissions (name, code, group_id, modules)
VALUES ('Chiến dịch', 's_dashboard_campaign',
        (SELECT id FROM permission_groups WHERE name = 'DASHBOARD - Tổng quan'), ARRAY['crm']);
