ALTER TABLE users.transaction_hitories
    ADD COLUMN IF NOT EXISTS object_id BIGINT,
    ADD COLUMN IF NOT EXISTS object_name VARCHAR(20),
    ADD COLUMN IF NOT EXISTS object_data JSONB;