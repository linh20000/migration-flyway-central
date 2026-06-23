ALTER TABLE users.rel_petition_time_work_plan RENAME TO rel_petition_time_plan;
alter table users.rel_petition_time_plan rename column work_plan_id to business_plan_id;
