ALTER TABLE users.package_transaction
    RENAME COLUMN subcriber_id TO user_id;

ALTER TABLE users.enterprise_package
    ADD COLUMN if not exists module varchar;

ALTER TABLE users.enterprise_package
    ADD COLUMN if NOT exists initial_expire_at timestamp;

DROP TABLE IF EXISTS users.enterprise_package;

CREATE TABLE IF NOT EXISTS users.enterprise_package
(
    id
    BIGSERIAL
    NOT
    NULL
    PRIMARY
    KEY,
    package_id
    INTEGER,
    package_price_id
    INTEGER,
    user_id
    BIGINT,
    contact_people_ids
    BIGINT[],
    price
    BIGINT,
    active_at
    timestamp
    without
    time
    zone,
    status
    CHARACTER
    VARYING
(
    50
) COLLATE pg_catalog."default",
    type CHARACTER VARYING
(
    50
) COLLATE pg_catalog."default",
    created_at timestamp without time zone,
    updated_at timestamp
                         without time zone,
    expire_at timestamp
                         without time zone,
    enterprise_id BIGINT,
    module CHARACTER VARYING COLLATE pg_catalog."default",
    package_price_data jsonb,
    package_data jsonb,
    initial_expire_at timestamp
                         without time zone
    );

CREATE
OR REPLACE view users.sso_enterprise_summary AS
SELECT e.sso_id    AS sso_id,
       Count(e.id) AS enterprise_count
FROM enterprise.enterprises e
GROUP BY e.sso_id;

CREATE
OR REPLACE view users.enterprise_user_summary AS
SELECT u.enterprise_id AS enterprise_id,
       Count(u.id)     AS user_count
FROM users.users u
WHERE u.status = 'ACTIVE'
GROUP BY u.enterprise_id;