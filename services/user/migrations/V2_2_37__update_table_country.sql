create extension if not exists unaccent;

update public.country set slug = lower(unaccent(name));
update public.province set slug = lower(unaccent(name));
update public.district set slug = lower(unaccent(name));
update public.ward set slug = lower(unaccent(name));

drop extension if exists unaccent;