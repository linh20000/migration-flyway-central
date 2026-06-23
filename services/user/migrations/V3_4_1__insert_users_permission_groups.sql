INSERT INTO users.permission_groups(name, modules, sort, group_id, code)
VALUES ('Ví tiền ',
        ARRAY['iss', 'crm'],
        (select sort + 20 from users.permission_groups where group_id = null and code = 'setting'),
        null,
        'wallet');


INSERT INTO users.permission_groups(name, modules, sort, group_id, code)
VALUES ('Quản lý ví',
        ARRAY['iss', 'crm'],
        0,
        (select id from users.permission_groups where code = 'wallet'),
        'wallet_wallet');

INSERT INTO users.permissions( name, code, group_id, modules, sort)
VALUES ('Truy cập quản lý ví',
        'u_wallet_view',
        (select id from users.permission_groups pg where code = 'wallet_wallet'),
        ARRAY['iss','crm'],
        1
       );

INSERT INTO users.permissions( name, code, group_id, modules, sort)
VALUES ('Chuyển tiền',
        'u_wallet_transfer',
        (select id from users.permission_groups pg where code = 'wallet_wallet'),
        ARRAY['iss','crm'],
        1
       );

INSERT INTO users.permissions( name, code, group_id, modules, sort)
VALUES ('Thu hồi',
        'u_wallet_retrieve',
        (select id from users.permission_groups pg where code = 'wallet_wallet'),
        ARRAY['iss','crm'],
        2
       );