delete from permissions where code in ('s_market_research_nctt_view',
    's_market_research_r', 's_market_research_create','s_market_research_view'
, 's_market_research_update'
    , 's_market_research_delete'
, 's_market_research_change_status');

-- Chèn dữ liệu vào bảng permissions
INSERT INTO permissions (name, code, group_id) VALUES

('Xem Báo cáo NCTT', 'm_market_research_nctt_view', (SELECT id FROM permission_groups WHERE name = 'SALE - Nghiên cứu thị trường')),
('Xem Báo cáo R&D', 'm_market_research_r&d_view', (SELECT id FROM permission_groups WHERE name = 'SALE - Nghiên cứu thị trường')),

('Thêm Báo cáo NCTT', 'm_market_research_nctt_create', (SELECT id FROM permission_groups WHERE name = 'SALE - Nghiên cứu thị trường')),
('Sửa Báo cáo NCTT', 'm_market_research_nctt_update', (SELECT id FROM permission_groups WHERE name = 'SALE - Nghiên cứu thị trường')),
('Xóa Báo cáo NCTT', 'm_market_research_nctt_delete', (SELECT id FROM permission_groups WHERE name = 'SALE - Nghiên cứu thị trường')),
('Đổi trạng thái Báo cáo NCTT', 'm_market_research_nctt_change_status', (SELECT id FROM permission_groups WHERE name = 'SALE - Nghiên cứu thị trường')),

('Thêm Báo cáo R&D', 'm_market_research_r&d_create', (SELECT id FROM permission_groups WHERE name = 'SALE - Nghiên cứu thị trường')),
('Sửa Báo cáo R&D', 'm_market_research_r&d_update', (SELECT id FROM permission_groups WHERE name = 'SALE - Nghiên cứu thị trường')),
('Xóa Báo cáo R&D', 'm_market_research_r&d_delete', (SELECT id FROM permission_groups WHERE name = 'SALE - Nghiên cứu thị trường')),
('Đổi trạng thái Báo cáo R&D', 'm_market_research_r&d_change_status', (SELECT id FROM permission_groups WHERE name = 'SALE - Nghiên cứu thị trường'));

