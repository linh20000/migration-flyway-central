create table if not exists public.province (
      id int primary key ,
      name varchar (50),
      sector varchar,
      level varchar (50)
);

create table if not exists public.district (
      id int primary key ,
      name varchar (50),
      level varchar (50),
      province_id int
);

create table if not exists public.ward (
  id int primary key ,
  name varchar (50),
  level varchar (50),
  province_id int,
  district_id int
);