INSERT INTO users.permission_groups(name, modules, sort, group_id, code)
	VALUES ('Mạng xã hội',
	ARRAY['crm'],
	(select sort - 0.01 from users.permission_groups where code = 'crm_s_client'),
	(select id from users.permission_groups where code = 'crm'),
	'crm_social_network');

INSERT INTO users.permissions(name, code, group_id, modules, sort)
	VALUES
	('Truy cập', 'c_social_network_view',
    (select id from users.permission_groups where code = 'crm_social_network'),
    ARRAY['crm'], 0),
    ('Thêm Zalo Oa', 'c_social_network_zalo_create',
    (select id from users.permission_groups where code = 'crm_social_network'),
    ARRAY['crm'], 1),
    ('Thêm Facebook Fanpage', 'c_social_network_fb_create',
    (select id from users.permission_groups where code = 'crm_social_network'),
    ARRAY['crm'], 2),
    ('Phân công và thu hồi tin nhắn', 'c_social_network_allocation',
    (select id from users.permission_groups where code = 'crm_social_network'),
    ARRAY['crm'], 3);