-- Enums
CREATE TYPE point_status AS ENUM ('ACTIVE', 'INACTIVE', 'BLOCK');
CREATE TYPE point_source AS ENUM ('ORDER', 'ADMIN_AWARED', 'USE');
CREATE TYPE log_type AS ENUM ('AVAILABLE', 'HOLD');
CREATE TYPE member_rank AS ENUM ('STANDARD', 'VIP', 'DIAMOND');


-- Create the "customer_points" table
CREATE TABLE customer_points (
                                      user_id         int8 NOT NULL,
                                      enterprise_id          int8 NOT NULL,
                                      total_point     double precision NOT NULL,
                                      available_points double precision NOT NULL,
                                      lock_points     double precision NOT NULL,
                                      status          point_status NOT NULL,
                                      created_at      timestamp NOT NULL,
                                      updated_at      timestamp NOT NULL,
                                      PRIMARY KEY (user_id, enterprise_id)
);

-- Create the "point_logs" table
CREATE TABLE point_logs (
                                 id              bigserial PRIMARY KEY,
                                 enterprise_id          int8 NOT NULL,
                                 user_id         int8 NOT NULL,
                                 order_id        int8,
                                 point           double precision NOT NULL,
                                 source          point_source NOT NULL,
                                 type            log_type NOT NULL,
                                 created_at      timestamp NOT NULL
);

-- Create the "members" table
CREATE TABLE members (
                              id              int8 PRIMARY KEY,
                              enterprise_id          int8 NOT NULL,
                              total_revenue   double precision NOT NULL,
                              revenue         double precision NOT NULL,
                              rank            member_rank NOT NULL,
                              created_at      timestamp NOT NULL,
                              updated_at      timestamp NOT NULL
);

-- Create the "revenue_logs" table
CREATE TABLE revenue_logs (
                                   id              bigserial PRIMARY KEY,
                                   enterprise_id          int8 NOT NULL,
                                   user_id         int8 NOT NULL,
                                   order_id        int8 NOT NULL,
                                   amount          double precision NOT NULL,
                                   created_at      timestamp NOT NULL
);

