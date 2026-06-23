DROP TABLE IF EXISTS kafka_failed_messages;

CREATE TABLE kafka_failed_messages
(
    id             bigserial NOT NULL primary key ,
    topic          varchar   NOT NULL,
    message_key    text NULL,
    message_value  text NULL,
    error_message  text NULL,
    try_number     int2 NULL,
    is_deleted     bool NULL DEFAULT false,
    "type"         varchar(20) DEFAULT 'producer',
    message_offset bigint NULL,
    "partition"   integer  NULL,
    updated_at     timestamp NULL,
    created_at     timestamp NULL
);