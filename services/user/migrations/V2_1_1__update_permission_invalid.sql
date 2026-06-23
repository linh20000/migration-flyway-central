update users.permissions
set name = 'Xem Vật tư'
where code = 'd_supplies_view'
  and group_id =
      (SELECT id FROM users.permission_groups WHERE name = 'PRODUCT - Sản phẩm');
update users.permissions
set name = 'Tạo Vật tư'
where code = 'd_supplies_create'
  and group_id =
      (SELECT id FROM users.permission_groups WHERE name = 'PRODUCT - Sản phẩm');
update users.permissions
set name = 'Sửa Vật tư'
where code = 'd_supplies_update'
  and group_id =
      (SELECT id FROM users.permission_groups WHERE name = 'PRODUCT - Sản phẩm');
update users.permissions
set name = 'Xóa Vật tư'
where code = 'd_supplies_delete'
  and group_id =
      (SELECT id FROM users.permission_groups WHERE name = 'PRODUCT - Sản phẩm');
