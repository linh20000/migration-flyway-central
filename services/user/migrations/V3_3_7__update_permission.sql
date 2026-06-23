-- Chèn dữ liệu vào bảng permissions
update permissions set name = 'Xem báo cáo đơn hành chính' where code = 'u_petition_report_view';
update permissions set name = 'Xuất file báo cáo đơn hành chính' where code = 'u_petition_report_export';