alter table users.petitions
    add column parent_id bigint;

alter table users.petition_times
    add column target varchar;

CREATE TABLE rel_petition_time_project
(
    petition_id int8 NULL,
    project_id  int8 NULL,
    CONSTRAINT rel_petition_project_pkey PRIMARY KEY (petition_id, project_id)
);

CREATE TABLE rel_petition_time_work_plan
(
    petition_id  int8 NULL,
    work_plan_id int8 NULL,
    CONSTRAINT rel_petition_work_plan_pkey PRIMARY KEY (petition_id, work_plan_id)
);