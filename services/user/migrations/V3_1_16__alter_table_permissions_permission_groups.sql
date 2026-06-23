update users.permission_groups
set name = 'SALE - Chiến dịch'
where name = 'DATA - Chiến dịch';

update users.permission_groups
set name = 'SALE - Cơ hội'
where name = 'DATA - Cơ hội';

update users.permission_groups
set name = 'SALE - Dự báo doanh thu'
where name = 'DATA - Dự báo doanh thu';

alter table users.permission_groups
    add column if not exists sort integer;

alter table users.permissions
    add column if not exists sort integer;

update users.permission_groups
set sort = 1
where name = 'DASHBOARD - Tổng quan';

DO
$$
DECLARE
PERMISSION_GROUP text;
    PERMISSION_GROUPS
text[] := ARRAY['SALE - Chiến dịch','DATA - Tiềm năng','DATA - Dữ liệu khách hàng','SALE - Cơ hội','SALE - Báo giá','SALE - Hợp đồng','SALE - Đơn hàng','PRODUCT - Sản phẩm','SALE - Dự báo doanh thu','SALE - Báo cáo','SETTING - Duyệt'];
BEGIN
    FOREACH
PERMISSION_GROUP IN ARRAY PERMISSION_GROUPS
    LOOP
update users.permission_groups
set sort = (select max(sort) from users.permission_groups) + 1
where name = PERMISSION_GROUP;
END LOOP;
END $$;