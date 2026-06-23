

alter table users.wallets
    add column user_id bigint not null default 0;

update users.wallets
set user_id = created_user_id;
