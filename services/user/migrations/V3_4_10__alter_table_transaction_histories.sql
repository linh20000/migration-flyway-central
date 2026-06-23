ALTER TABLE transaction_hitories
    ADD COLUMN if not exists is_system BOOLEAN DEFAULT false;