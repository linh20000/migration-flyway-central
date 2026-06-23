alter table users.shifts add column overtime_start_time time;

alter table timekeeping add column duration_overtime integer;
alter table timekeeping add column duration_valid integer;
