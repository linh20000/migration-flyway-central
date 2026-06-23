INSERT INTO permissions (name, code, group_id) VALUES
('Đổi trạng thái Công nợ', 's_debts_state', (SELECT id FROM permission_groups WHERE name = 'SALE - Công nợ'));
