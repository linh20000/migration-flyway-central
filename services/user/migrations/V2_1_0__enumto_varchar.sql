alter table customer_points
    alter column status set data type varchar(20);
alter table employees
    alter column job_type set data type varchar(20);
alter table employees
    alter column wage_type set data type varchar(20);
alter table employees
    alter column status set data type varchar(20);
alter table management_levels
    alter column manager_level set data type varchar(20);
alter table members
    alter column rank set data type varchar(20);
alter table point_logs
    alter column source set data type varchar(20);
alter table point_logs
    alter column type set data type varchar(20);
alter table users
    alter column gender set data type varchar(20);