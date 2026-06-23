ALTER TABLE users.package
    ADD column unlimited_user BOOLEAN default false;

ALTER TABLE users.package
    ADD COLUMN unlimited_brand BOOLEAN default false;

ALTER TABLE users.package
    ADD COLUMN unlimited_client BOOLEAN default false;