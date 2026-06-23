INSERT INTO permissions (name, code, group_id)
VALUES ('Phân dữ liệu', 's_allocation_create',
        (SELECT id FROM permission_groups WHERE name = 'SALE - Khách hàng')),
       ('Sửa người phụ trách', 's_implementers_update',
        (SELECT id FROM permission_groups WHERE name = 'SALE - Khách hàng')),
       ('Xoá người phụ trách', 's_implementers_delete',
        (SELECT id FROM permission_groups WHERE name = 'SALE - Khách hàng'));