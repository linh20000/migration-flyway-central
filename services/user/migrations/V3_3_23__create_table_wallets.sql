CREATE TABLE users.wallets (
    wallet_id bigserial PRIMARY KEY,
    created_user_id BIGINT NOT NULL,
    enterprise_id BIGINT NOT NULL,
    is_deleted BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    balance DOUBLE PRECISION NOT NULL,
    status VARCHAR(50) NOT NULL DEFAULT 'NO_LOCK'
);

CREATE TABLE users.transaction_hitories (
    id bigserial PRIMARY KEY,
    wallet_id bigint NOT NULL,
    type VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    value DOUBLE PRECISION NOT NULL,
    note VARCHAR(100) ,
    balance_before DOUBLE PRECISION,
    balance_current DOUBLE PRECISION,
    status VARCHAR(50) NOT NULL ,
    code VARCHAR(20),
    created_user_id BIGINT,
    enterprise_id BIGINT NOT NULL,
    service_type VARCHAR(100)
);