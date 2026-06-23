-- Chèn dữ liệu vào bảng permission_groups
INSERT INTO permission_groups (name)
VALUES ('ACCOUNTANT - Tổng quan'),
       ('ACCOUNTANT - Hoá đơn'),
       ('ACCOUNTANT - Phiếu đề nghị'),
       ('ACCOUNTANT - Chi phí'),
       ('ACCOUNTANT - Dòng tiền về'),
       ('ACCOUNTANT - Cài đặt chi phí'),
       ('ACCOUNTANT - Cài đặt loại phí'),
       ('ACCOUNTANT - Tài khoản kế toán'),
       ('ACCOUNTANT - Cài đặt tài khoản ngân hàng'),
       ('ACCOUNTANT - Cài đặt giảm trừ');

-- Chèn dữ liệu vào bảng permissions
INSERT INTO permissions (name, code, group_id)
VALUES
    ('Hợp đồng', 'a_contract_view', (SELECT id FROM permission_groups WHERE name = 'ACCOUNTANT - Tổng quan')),
    ('Dự án', 'a_project_view', (SELECT id FROM permission_groups WHERE name = 'ACCOUNTANT - Tổng quan')),
    ('Đơn hàng', 'a_order_view', (SELECT id FROM permission_groups WHERE name = 'ACCOUNTANT - Tổng quan')),

    ('Theo dõi hoá đơn', 'a_bill_view', (SELECT id FROM permission_groups WHERE name = 'ACCOUNTANT - Hoá đơn')),

    ('Xem phiếu đề nghị', 'a_request_view', (SELECT id FROM permission_groups WHERE name = 'ACCOUNTANT - Phiếu đề nghị')),
    ('Đổi trạng thái phiếu đề nghị', 'a_request_state', (SELECT id FROM permission_groups WHERE name = 'ACCOUNTANT - Phiếu đề nghị')),

    ('Xem chi phí', 'a_cost_view', (SELECT id FROM permission_groups WHERE name = 'ACCOUNTANT - Chi phí')),
    ('Sửa chi phí', 'a_cost_update', (SELECT id FROM permission_groups WHERE name = 'ACCOUNTANT - Chi phí')),
    ('Xoá chi phí', 'a_cost_delete', (SELECT id FROM permission_groups WHERE name = 'ACCOUNTANT - Chi phí')),

    ('Xem dòng tiền', 'a_cash_flow_view', (SELECT id FROM permission_groups WHERE name = 'ACCOUNTANT - Dòng tiền về')),
    ('Sửa dòng tiền', 'a_cash_flow_update', (SELECT id FROM permission_groups WHERE name = 'ACCOUNTANT - Dòng tiền về')),
    ('Xoá dòng tiền', 'a_cash_flow_delete', (SELECT id FROM permission_groups WHERE name = 'ACCOUNTANT - Dòng tiền về')),
    ('Đổi trạng thái', 'a_cash_flow_state', (SELECT id FROM permission_groups WHERE name = 'ACCOUNTANT - Dòng tiền về')),

    ('Xem chi phí', 'a_expense_view', (SELECT id FROM permission_groups WHERE name = 'ACCOUNTANT - Cài đặt chi phí')),
    ('Thêm chi phí', 'a_expense_create', (SELECT id FROM permission_groups WHERE name = 'ACCOUNTANT - Cài đặt chi phí')),
    ('Sửa chi phí', 'a_expense_update', (SELECT id FROM permission_groups WHERE name = 'ACCOUNTANT - Cài đặt chi phí')),
    ('Xoá chi phí', 'a_expense_delete', (SELECT id FROM permission_groups WHERE name = 'ACCOUNTANT - Cài đặt chi phí')),

    ('Xem loại chi phí', 'a_expense_type_view', (SELECT id FROM permission_groups WHERE name = 'ACCOUNTANT - Cài đặt loại phí')),
    ('Thêm loại chi phí', 'a_expense_type_create', (SELECT id FROM permission_groups WHERE name = 'ACCOUNTANT - Cài đặt loại phí')),
    ('Sửa loại chi phí', 'a_expense_type_update', (SELECT id FROM permission_groups WHERE name = 'ACCOUNTANT - Cài đặt loại phí')),
    ('Xoá loại chi phí', 'a_expense_type_delete', (SELECT id FROM permission_groups WHERE name = 'ACCOUNTANT - Cài đặt loại phí')),

    ('Tài khoản kế toán', 'a_accountant_account', (SELECT id FROM permission_groups WHERE name = 'ACCOUNTANT - Tài khoản kế toán')),

    ('Xem tài khoản ngân hàng', 'a_bank_account_view', (SELECT id FROM permission_groups WHERE name = 'ACCOUNTANT - Cài đặt tài khoản ngân hàng')),
    ('Thêm tài khoản ngân hàng', 'a_bank_account_create', (SELECT id FROM permission_groups WHERE name = 'ACCOUNTANT - Cài đặt tài khoản ngân hàng')),
    ('Sửa tài khoản ngân hàng', 'a_bank_account_update', (SELECT id FROM permission_groups WHERE name = 'ACCOUNTANT - Cài đặt tài khoản ngân hàng')),
    ('Xoá tài khoản ngân hàng', 'a_bank_account_delete', (SELECT id FROM permission_groups WHERE name = 'ACCOUNTANT - Cài đặt tài khoản ngân hàng')),

    ('Xem giảm trừ', 'a_reduces_view', (SELECT id FROM permission_groups WHERE name = 'ACCOUNTANT - Cài đặt giảm trừ')),
    ('Thêm giảm trừ', 'a_reduces_create', (SELECT id FROM permission_groups WHERE name = 'ACCOUNTANT - Cài đặt giảm trừ')),
    ('Sửa giảm trừ', 'a_reduces_update', (SELECT id FROM permission_groups WHERE name = 'ACCOUNTANT - Cài đặt giảm trừ')),
    ('Xoá giảm trừ', 'a_reduces_delete', (SELECT id FROM permission_groups WHERE name = 'ACCOUNTANT - Cài đặt giảm trừ'));
