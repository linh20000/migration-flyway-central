ALTER TABLE users.users
    ALTER COLUMN is_owner SET DEFAULT false;

UPDATE users.users
SET is_owner = false
WHERE is_owner IS NULL;
