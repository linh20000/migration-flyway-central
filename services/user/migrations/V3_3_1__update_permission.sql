-- Khởi tạo lại nhóm quyền
alter table users.permission_groups
add column if not exists group_id bigint;

do $$
declare
	sortIndex bigint := 0;
	permissionGroupNames varchar[] := ARRAY['INDIVIDUAL', 'PROJECT', 'DATA', 'MARKETING', 'PRODUCT', 'ORDER', 'ACCOUNTANT', 'HCNS', 'REPORT', 'SETTING'];
	permissionGroupName varchar;
begin
	foreach permissionGroupName in array permissionGroupNames
	loop
		INSERT INTO users.permission_groups(name, modules, sort)
		VALUES (permissionGroupName, ARRAY['iss'], sortIndex);

		sortIndex := sortIndex + 1;

		update users.permission_groups
		set group_id = (select pg.id from users.permission_groups pg where pg.name = permissionGroupName)
		,name = replace(name, concat(permissionGroupName, ' - '), '')
		where name like concat('%', permissionGroupName, ' - ','%');
	end loop;
end $$;

update users.permission_groups
set group_id = (select pg.id from users.permission_groups pg where pg.name = 'DATA'), name = replace(name, concat('SALE', ' - '), '')
where name like concat('%', 'SALE', ' - ','%');

delete from users.permission_groups
where name like concat('%', 'CHAT', ' - ','%');

do $$
declare
	sortIndex bigint := 0;
	permissionNames varchar[] := ARRAY['view', 'create', 'add', 'update', 'delete', 'import', 'manage'];
	permissionName varchar;
begin
	foreach permissionName in array permissionNames
	loop
		update users.permissions
		set sort = sortIndex
		where code like concat('%', permissionName,'%');
		sortIndex := sortIndex + 1;
	end loop;
end $$;

-- Cập nhật quyền dự án
update users.permission_groups
set sort = 0
where name = 'Dự án' and group_id = (select pg.id from users.permission_groups pg where name ='PROJECT');

DO $$
DECLARE
	sortIndex BIGINT := 1;
	permission_group RECORD;
BEGIN
	FOR permission_group IN
		(SELECT *
		 FROM users.permission_groups
		 WHERE sort IS NULL
		 AND group_id = (SELECT pg.id FROM users.permission_groups pg WHERE pg.name = 'PROJECT'))
	LOOP
		UPDATE users.permission_groups
		SET sort = sortIndex
		WHERE id = permission_group.id;

		sortIndex := sortIndex + 1;
	END LOOP;
END $$;

INSERT INTO users.permission_groups(name, modules, sort, group_id)
VALUES ('Cài đặt',
		ARRAY['iss'],
		(select sort + 1 from users.permission_groups
		 where group_id = (select pg.id from users.permission_groups pg where name ='PROJECT')
		order by sort desc
		limit 1),
		(select pg.id from users.permission_groups pg where name ='PROJECT'));

do $$
declare
	groupNames varchar[] := ARRAY['Loại công việc', 'Trạng thái công việc', 'Quy trình'];
	groupName varchar;
	sortIndex bigint := 0;
begin
	foreach groupName in array groupNames
	loop
		update users.permission_groups
		set sort = sortIndex, group_id = (select pg.id from users.permission_groups pg where name ='Cài đặt' and group_id = (select pg.id from users.permission_groups pg where name ='PROJECT'))
		where name = groupName and  group_id = (select pg.id from users.permission_groups pg where name ='PROJECT');

		sortIndex := sortIndex + 1;
	end loop;
end $$;

-- Cập nhật quyền CRM
DO $$
DECLARE
	sortIndex BIGINT := 1;
	permission_group RECORD;
BEGIN
	FOR permission_group IN
		(SELECT *
		 FROM users.permission_groups
		 WHERE sort IS NULL
		 AND group_id = (SELECT pg.id FROM users.permission_groups pg WHERE pg.name = 'DATA'))
	LOOP
		UPDATE users.permission_groups
		SET sort = sortIndex
		WHERE id = permission_group.id;

		sortIndex := sortIndex + 1;
	END LOOP;
END $$;

INSERT INTO users.permission_groups(name, modules, sort, group_id)
VALUES ('Cài đặt',
		ARRAY['iss'],
		(select sort + 1 from users.permission_groups
		 where group_id = (select pg.id from users.permission_groups pg where name ='DATA')
		order by sort desc
		limit 1),
		(select pg.id from users.permission_groups pg where name ='DATA'));

do $$
declare
	groupNames varchar[] := ARRAY['Nguồn khách hàng', 'Chức vụ', 'Lĩnh vực', 'Nhgành nghề', 'Loại hình', 'Quy mô', 'Phân khúc', 'Quan hệ'];
	groupName varchar;
	sortIndex bigint := 1;
begin
	foreach groupName in array groupNames
	loop
		update users.permission_groups
		set sort = sortIndex, group_id = (select pg.id from users.permission_groups pg where name ='Cài đặt' and group_id = (select pg.id from users.permission_groups pg where name ='DATA'))
		where name = groupName;

		sortIndex := sortIndex + 1;
	end loop;
end $$;

update users.permission_groups
set modules = ARRAY['crm']
where name = 'Kho dữ liệu' and group_id = (select id from users.permission_groups where name = 'DATA');

update users.permissions
set modules= ARRAY['crm', 'iss'], group_id = (select id from users.permission_groups where name = 'Tổng quan' and group_id = (select id from users.permission_groups where name = 'DATA'))
where group_id = (select id from users.permission_groups where name = 'DASHBOARD - Tổng quan');

delete from users.permission_groups
where name = 'DASHBOARD - Tổng quan';

update users.permission_groups
set sort = null
where group_id = (select id from users.permission_groups where name = 'DATA');

do $$
declare
	permissionGroups varchar[] := ARRAY['Tổng quan', 'Khách hàng', 'Mục tiêu', 'Chiến dịch', 'Cơ hội', 'Báo giá', 'Hợp đồng', 'Đơn hàng', 'Dự báo doanh thu', 'Kế hoạch kinh doanh', 'Báo cáo'];
	permissionGroup varchar;
	permissionGroupId bigint;
	sortIndex bigint := 0;
begin
	foreach permissionGroup in array permissionGroups
	loop
		permissionGroupId := (select id from users.permission_groups where name = permissionGroup and group_id = (select id from users.permission_groups where name = 'DATA'));
		update users.permission_groups
		set sort = sortIndex
		where id = permissionGroupId;
		update users.permissions
		set modules = ARRAY['crm', 'iss']
		where group_id = permissionGroupId;
		sortIndex := sortIndex + 1;
	end loop;
end $$;

-- Cập nhật MARKETING
do $$
declare
	sortIndex bigint := 0;
	permissionNames varchar[] := ARRAY['Tổng quan', 'Dữ liệu khách hàng', 'Kế hoạch kinh doanh', 'Kpi', 'Nghiên cứu thị trường', 'Báo cáo công việc', '
Công việc'];
	permissionName varchar;
begin
	foreach permissionName in array permissionNames
	loop
		update users.permission_groups
		set sort = sortIndex
		where name = permissionName and group_id = (select id from users.permission_groups where name = 'MARKETING');

		sortIndex := sortIndex + 1;
	end loop;
end $$;

-- Cập nhật Accountant
do $$
declare
	sortIndex bigint := 0;
	permissionNames varchar[] := ARRAY['Tổng quan', 'Phiếu đề nghị', 'Chi phí', 'Dòng tiền về', 'Cài đặt chi phí', 'Cài đặt loại phí
', 'Tài khoản kế toán', 'Cài đặt tài khoản ngân hàng', 'Cài đặt giảm trừ', 'Hoá đơn'];
	permissionName varchar;
begin
	foreach permissionName in array permissionNames
	loop
		update users.permission_groups
		set sort = sortIndex
		where name = permissionName and group_id = (select id from users.permission_groups where name = 'ACCOUNTANT');
		sortIndex := sortIndex + 1;
	end loop;
end $$;

INSERT INTO users.permission_groups(name, modules, sort, group_id)
	VALUES ('Cài đặt', ARRAY['iss'], (select sort + 1 from users.permission_groups where group_id = (select id from users.permission_groups where name = 'ACCOUNTANT') order by sort desc limit 1), (select id from users.permission_groups where name ='ACCOUNTANT'));

do $$
declare
	permissionNames varchar[] := ARRAY['Cài đặt chi phí', 'Cài đặt loại phí', 'Tài khoản kế toán', 'Cài đặt tài khoản ngân hàng', 'Cài đặt giảm trừ'];
	permissionName varchar;
begin
	foreach permissionName in array permissionNames
	loop
		update users.permission_groups
		set group_id = (select id from users.permission_groups where name = 'Cài đặt' and group_id = (select id from users.permission_groups where name = 'ACCOUNTANT'))
		where name = permissionName and group_id = (select id from users.permission_groups where name = 'ACCOUNTANT');
	end loop;
end $$;

-- Cập nhật Setting
do $$
declare
	sortIndex bigint := 0;
	permissionNames varchar[] := ARRAY['Tài khoản', 'Vai trò', 'Khối phòng ban', 'Email', 'Tin nhắn', 'Quyền duyệt', 'Duyệt'];
	permissionName varchar;
begin
	foreach permissionName in array permissionNames
	loop
		update users.permission_groups
		set sort = sortIndex
		where name = permissionName and group_id = (select id from users.permission_groups where name = 'SETTING');
		sortIndex := sortIndex + 1;
	end loop;
end $$;

-- Cập nhật HCNS

INSERT INTO users.permission_groups( name, modules, sort, group_id)
	VALUES ('Cài đặt', ARRAY['iss'], 20, (select id from users.permission_groups where name = 'HCNS'));

do $$
declare
	permissionGroup record;
begin
	for permissionGroup in (select * from users.permission_groups where name =  any(ARRAY['Ca làm việc', 'Loại nghỉ', 'Loại giải trình']))
	loop
		update users.permission_groups
		set group_id = (select id from users.permission_groups where group_id = (select id from users.permission_groups where name = 'HCNS') and name = 'Cài đặt')
		where id = permissionGroup.id;
	end loop;
end $$;

-- Cập nhật tên nhóm quyền
update users.permission_groups set name = 'Cá nhân' where name = 'INDIVIDUAL';
update users.permission_groups set name = 'Dự án' where name = 'PROJECT';
update users.permission_groups set name = 'CRM' where name = 'DATA';
update users.permission_groups set name = 'Marketing' where name = 'MARKETING';
update users.permission_groups set name = 'Sản phẩm' where name = 'PRODUCT';
update users.permission_groups set name = 'Kế toán' where name = 'ACCOUNTANT';
update users.permission_groups set name = 'Hành chính nhân sự' where name = 'HCNS';
update users.permission_groups set name = 'Báo cáo' where name = 'REPORT';
update users.permission_groups set name = 'Cài đặt' where name = 'SETTING';


delete from users.permission_groups
where name = 'Cá nhân';

update users.permission_groups
set group_id = null, name = 'Cá nhân', sort = 0
where name = 'Quản lý cá nhân';

delete from users.permission_groups
where name = 'ORDER';