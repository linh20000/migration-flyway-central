ALTER TABLE users.timekeeping_entries
    ADD COLUMN IF NOT EXISTS duration_shift INTEGER;

ALTER TABLE users.timekeeping_entries
    ADD COLUMN IF NOT EXISTS code VARCHAR(50);
