alter TABLE timekeeping add column shift_id bigint;
alter TABLE timekeeping add column duration_be_late integer;
alter TABLE timekeeping add column duration_back_early integer;
alter TABLE timekeeping add column duration_work integer;