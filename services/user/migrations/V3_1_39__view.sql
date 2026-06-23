CREATE SCHEMA IF NOT EXISTS project;
CREATE SCHEMA IF NOT EXISTS sale;
CREATE SCHEMA IF NOT EXISTS setting;

-- project.projects definition

-- Drop table

-- DROP TABLE projects;

CREATE TABLE IF NOT EXISTS project.projects
(
    id                  bigserial    NOT NULL primary key,
    enterprise_id       int8 NULL,
    order_id            int8 NULL,
    client_id           int8 NULL,
    finish_time         timestamp NULL,
    start_time          timestamp NULL,
    deadline            timestamp NULL,
    state               varchar(50) NULL,
    is_deleted          bool NULL,
    created_at          timestamp NULL,
    updated_at          timestamp NULL,
    "name"              varchar(200) NOT NULL,
    code                varchar(10)  NOT NULL,
    cost_type           varchar(50) NULL,
    workflow_id         int8         NOT NULL DEFAULT 0,
    address             jsonb NULL,
    created_user_id     int8 NULL,
    description         varchar(10000) NULL,
    project_workflow_id int8 NULL,
    main_user_id        int8 NULL,
    "type"              varchar(50) NULL
);

-- sale.business_plans definition

-- Drop table

-- DROP TABLE business_plans;

CREATE TABLE IF NOT EXISTS sale.business_plans (
                                id bigserial NOT NULL,
                                enterprise_id int8 NULL,
                                "name" varchar NULL,
                                description varchar NULL,
                                create_user_id int8 NULL,
                                state varchar(20) NOT NULL,
                                created_at timestamp NOT NULL,
                                updated_at timestamp NULL,
                                code varchar NULL,
                                is_deleted bool NOT NULL DEFAULT false,
                                CONSTRAINT business_plans_pkey PRIMARY KEY (id)
);

-- setting.approval definition

-- Drop table

-- DROP TABLE approval;

CREATE TABLE IF NOT EXISTS setting.approval (
                          id bigserial NOT NULL,
                          enterprise_id int8 NOT NULL,
                          "name" varchar(255) NOT NULL,
                          in_order bool NULL,
                          state varchar(50) NULL,
                          is_deleted bool NOT NULL DEFAULT false,
                          created_at timestamp NULL,
                          updated_at timestamp NULL,
                          code text NULL,
                          CONSTRAINT approval_pkey PRIMARY KEY (id)
);

-- setting.approval_requests definition

-- Drop table

-- DROP TABLE approval_requests;

CREATE TABLE IF NOT EXISTS setting.approval_requests (
                                   id bigserial NOT NULL,
                                   enterprise_id int8 NOT NULL,
                                   approval_id int8 NOT NULL,
                                   approval jsonb NOT NULL,
                                   "type" varchar(50) NULL,
                                   object_id int8 NOT NULL,
                                   request_user_id int8 NULL,
                                   request_time timestamp NULL,
                                   request_data jsonb NULL,
                                   receiver_user_ids _int8 NULL,
                                   receiver_organizational_structure_ids _int8 NULL,
                                   note varchar NULL,
                                   state varchar(50) NULL,
                                   created_at timestamp NULL,
                                   updated_at timestamp NULL,
                                   code varchar(20) NULL,
                                   approved_time timestamp NULL,
                                   modification jsonb NULL,
                                   CONSTRAINT approval_requests_pkey PRIMARY KEY (id)
);

-- setting.approval_request_process definition

-- Drop table

-- DROP TABLE approval_request_process;

CREATE TABLE IF NOT EXISTS setting.approval_request_process (
                                          id bigserial NOT NULL,
                                          enterprise_id int8 NOT NULL,
                                          approval_requests_id int8 NULL,
                                          process_user_id int8 NULL,
                                          sort int4 NULL,
                                          user_id int8 NULL,
                                          organizational_structure_id int8 NULL,
                                          state varchar(50) NULL,
                                          note varchar NULL,
                                          created_at timestamp NULL,
                                          updated_at timestamp NULL,
                                          approved_time timestamp NULL,
                                          modification jsonb NULL,
                                          in_approval bool NULL DEFAULT false,
                                          CONSTRAINT approval_request_process_pkey PRIMARY KEY (id)
);