ALTER TABLE users.petition_times add column shift_data jsonb default '{}';
ALTER TABLE users.petition_times add column petition_reason_data jsonb default '{}';
