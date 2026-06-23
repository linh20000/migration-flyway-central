ALTER TABLE users.package_transaction
ADD COLUMN approver jsonb;

ALTER TABLE users.package_transaction_log
ADD COLUMN changer jsonb;