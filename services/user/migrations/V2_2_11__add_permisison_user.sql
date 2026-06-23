delete from permissions where code in ('s_market_research_view',
    'm_market_research_view');

-- Chèn dữ liệu vào bảng permissions
INSERT INTO permissions (name, code, group_id) VALUES

('Xem Báo cáo NCTT', 's_market_research_nctt_view', (SELECT id FROM permission_groups WHERE name = 'SALE - Nghiên cứu thị trường')),
('Xem Báo cáo R&D', 's_market_research_r&d_view', (SELECT id FROM permission_groups WHERE name = 'SALE - Nghiên cứu thị trường'));
