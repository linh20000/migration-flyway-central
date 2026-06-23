create table users.rel_api_key_organizational
(
    api_key_id                  bigint,
    organizational_structure_id bigint,
    user_id                     bigint,
    primary key (api_key_id, organizational_structure_id)
);
