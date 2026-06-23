drop table members;
CREATE TABLE members (
                         user_id         int8 NOT NULL,
                         enterprise_id          int8 NOT NULL,
                         total_revenue   double precision NOT NULL,
                         revenue         double precision NOT NULL,
                         rank            member_rank NOT NULL,
                         created_at      timestamp NOT NULL,
                         updated_at      timestamp NOT NULL,
                         PRIMARY KEY (user_id, enterprise_id)
);