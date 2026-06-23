alter table organizational_structures add column created_at timestamp NULL DEFAULT CURRENT_TIMESTAMP;
alter table organizational_structures add column updated_at timestamp NULL DEFAULT CURRENT_TIMESTAMP;
