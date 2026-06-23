alter table users.timekeeping_device drop column hash_device_id;
alter table users.timekeeping_device drop column hash_device_token;
alter table users.timekeeping_device add column device_token varchar;