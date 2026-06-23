drop table rel_user_departments;
drop table rel_department_roles;
drop table departments;


-- Định nghĩa enum manager_level
CREATE TYPE manager_level AS ENUM ('LEADER', 'MANAGER', 'SUPERVISOR', 'EMPLOYEES');

-- Tạo bảng organizational_structures
CREATE TABLE organizational_structures
(
    id                          bigserial PRIMARY KEY,
    enterprise_id               int8,
    organizational_structure_id int8,
    name                        varchar NOT NULL,
    code                        varchar NOT NULL,
    manager_level manager_level
);
CREATE TABLE rel_user_organizational_structures
(
    user_id                     int8,
    organizational_structure_id int8,
    PRIMARY KEY (user_id, organizational_structure_id)
);
CREATE TABLE management_levels
(
    user_id                     int8,
    organizational_structure_id int8,
    manager_level manager_level,
    PRIMARY KEY (user_id, organizational_structure_id)
);
CREATE TABLE rel_organizational_structure_roles
(
    role_id                     int8,
    organizational_structure_id int8,
    PRIMARY KEY (role_id, organizational_structure_id)
);
CREATE TABLE rel_organizational_structure_permissions
(
    permission_id               int8,
    organizational_structure_id int8,
    PRIMARY KEY (permission_id, organizational_structure_id)
);
