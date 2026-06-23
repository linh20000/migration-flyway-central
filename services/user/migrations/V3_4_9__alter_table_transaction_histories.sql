ALTER TABLE users.transaction_hitories
    ADD COLUMN IF NOT EXISTS is_processed boolean;