alter table users.timekeeping_device
    ADD COLUMN local_created_at BIGINT,
    ADD COLUMN old_device_token VARCHAR(255),
    ADD COLUMN platform VARCHAR(50);