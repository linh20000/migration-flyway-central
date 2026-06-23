create table users.bank_account (
    id serial primary key ,
    bank_name varchar,
    bank_id varchar,
    account_holder varchar,
  account_number varchar,
  qr_api varchar,
    created_at timestamp,
    updated_at timestamp
);

ALTER TABLE users.package_transaction
ADD COLUMN qr_image varchar;

ALTER TABLE users.package_transaction
ADD COLUMN bank_account_id integer;

ALTER TABLE users.package_transaction
ADD COLUMN bank_account_data jsonb;