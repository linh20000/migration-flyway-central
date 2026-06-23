CREATE TABLE rel_user_permissions
(
    user_id       int8 NOT NULL,
    permission_id int8 NOT NULL,
    PRIMARY KEY (user_id, permission_id)
);