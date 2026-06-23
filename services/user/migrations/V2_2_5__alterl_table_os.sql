alter table users.organizational_structures
    add column "level" varchar not null default '';


-- update level
WITH RECURSIVE OrganizationalHierarchy AS (
    SELECT
        id,
        organizational_structure_id,
        concat(cast(id as text), '.') as level
    FROM
        users.organizational_structures
    WHERE
        organizational_structure_id IS NULL
    UNION ALL
    SELECT
        o.id,
        o.organizational_structure_id,
        concat(OrganizationalHierarchy.level, cast(o.id as text), '.')
    FROM
        users.organizational_structures o
            JOIN
        OrganizationalHierarchy ON o.organizational_structure_id = OrganizationalHierarchy.id
)
UPDATE
    users.organizational_structures o
SET
    "level" = OrganizationalHierarchy.level
    FROM
    OrganizationalHierarchy
WHERE
    o.id = OrganizationalHierarchy.id;
