UPDATE users.permissions SET name ='Xem phân dữ liệu' WHERE code = 'd_allocation_view';
UPDATE users.permissions SET name ='Phân dữ liệu' WHERE code = 'd_allocation_create';
UPDATE users.permissions SET name ='Sửa phân dữ liệu' WHERE code = 'd_allocation_update';
UPDATE users.permissions SET name ='Thu hồi phân dữ liệu' WHERE code = 'd_allocation_delete';
UPDATE users.permissions SET name ='Đổi trạng thái phân dữ liệu' WHERE code = 'd_allocation_state';