create table public.country
(
    id     int primary key,
    name   varchar(50),
    level  varchar(50)
);

insert into public.country(id, name, level) values (1, 'Việt Nam', '');

alter table public.province
add column country_id bigint default 1;