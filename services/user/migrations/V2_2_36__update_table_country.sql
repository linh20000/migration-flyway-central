create extension if not exists unaccent;

update public.country set slug = replace(lower(unaccent(name)), ' ', '-') where slug is null;
update public.province set slug = replace(lower(unaccent(name)), ' ', '-') where slug is null;
update public.district set slug = replace(lower(unaccent(name)), ' ', '-') where slug is null;
update public.ward set slug = replace(lower(unaccent(name)), ' ', '-') where slug is null;

drop extension if exists unaccent;