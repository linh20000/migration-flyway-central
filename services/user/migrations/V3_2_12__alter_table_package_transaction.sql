ALTER TABLE users.package_transaction
    ADD COLUMN package_price_id integer;

ALTER TABLE users.package_transaction
    ADD COLUMN package_data jsonb;

ALTER TABLE users.package_transaction
    ADD COLUMN package_price_data jsonb;

ALTER TABLE users.package_transaction
    ADD COLUMN bill jsonb;

ALTER TABLE users.package_transaction
    ADD COLUMN customer jsonb;

ALTER TABLE users.package_transaction
    ADD COLUMN code varchar(50) unique ;