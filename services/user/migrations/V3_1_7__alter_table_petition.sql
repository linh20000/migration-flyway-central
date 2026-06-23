alter table users.petitions add column unit_name varchar;
alter table users.petitions add column division_id bigint;
alter table users.petitions drop column unit_id;