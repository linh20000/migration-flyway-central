create table users.user_permission_additional
(
    user_id    bigint primary key,
    additional varchar[],
    ignore     varchar[],
    updated_at timestamp not null default current_timestamp
);