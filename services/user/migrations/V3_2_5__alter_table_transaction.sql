ALTER TABLE users.package_transaction
    ADD COLUMN comment varchar;

ALTER TABLE users.package_transaction_log
    RENAME COLUMN reason TO action;