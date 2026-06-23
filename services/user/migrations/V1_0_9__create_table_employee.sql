
drop table staffs;
-- Enums
drop TYPE staff_status;
drop TYPE wage_type;
drop TYPE staff_job_type;

CREATE TYPE employess_status AS ENUM ('WAITING', 'WORKING', 'QUIT');
CREATE TYPE wage_type AS ENUM ('WAGE_PER_WEEK', 'WAGE_PER_DAY', 'WAGE_PER_HOUR', 'WAGE_PER_SHIFT');
CREATE TYPE employess_job_type AS ENUM ('FULL_TIME', 'PART_TIME');

CREATE TABLE employees (
                             id              BIGSERIAL PRIMARY KEY,
                             name            VARCHAR NOT NULL,
                             enterprise_id          BIGINT NOT NULL,
                             job_type        employess_job_type NOT NULL,
                             image           VARCHAR,
                             code            VARCHAR NOT NULL,
                             date_join       timestamp,
                             wage            DOUBLE PRECISION NOT NULL,
                             wage_type       wage_type NOT NULL,
                             allowance       DOUBLE PRECISION,
                             bonus           DOUBLE PRECISION,
                             social_insurance DOUBLE PRECISION,
                             union_dues      DOUBLE PRECISION,
                             other_costs     DOUBLE PRECISION,
                             status          employess_status NOT NULL,
                             created_at      TIMESTAMP NOT NULL,
                             updated_at      TIMESTAMP NOT NULL
);