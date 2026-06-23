alter table users.shifts add column overtime_pay_rate double precision;
alter table users.shifts add column holiday_pay_rate double precision;

alter table users.shifts add column valid_checkin_from time;
alter table users.shifts add column valid_checkin_to time;

alter table users.shifts add column valid_checkout_from time;
alter table users.shifts add column valid_checkout_to time;
