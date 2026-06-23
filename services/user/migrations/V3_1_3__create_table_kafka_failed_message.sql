CREATE TABLE kafka_failed_messages
(
    id            bigserial primary key ,
    topic         varchar   NOT NULL,
    message_key   text,
    message_value text,
    error_message text,
    try_number    smallint,
    updated_at    timestamp,
    created_at    timestamp
);