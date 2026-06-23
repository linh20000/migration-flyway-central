alter table users.workplaces add column allow_other_network boolean;
alter table users.workplaces drop column bssid;
alter table users.workplaces add column address jsonb;

CREATE TABLE users.workplace_networks
(
    id            BIGSERIAL PRIMARY KEY,
    enterprise_id BIGINT,
    workplace_id BIGINT,
    name          VARCHAR(255),
    bssid         VARCHAR(255),
    is_active     BOOLEAN DEFAULT TRUE,
    is_deleted    BOOLEAN   DEFAULT FALSE,
    created_at    TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at    TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
