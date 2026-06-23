ALTER TABLE users.package_transaction
    ADD COLUMN module varchar;

ALTER TABLE users.package_transaction
    ADD COLUMN validity_period integer;

ALTER TABLE users.package_transaction
    ADD COLUMN time_unit varchar(50);

ALTER TABLE users.package_transaction RENAME COLUMN create_at TO created_at;

ALTER TABLE users.package_price
    ADD COLUMN time_unit varchar(50);

ALTER TABLE users.enterprise_package
    ADD COLUMN expire_at timestamp;

ALTER TABLE users.enterprise_package drop column validity_period;