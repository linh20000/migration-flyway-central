alter table enterprise.enterprises
    add column if not exists state varchar (50) not null
    check (state in ('PENDING', 'APPROVED', 'REJECT'))
    default 'PENDING';

update enterprise.enterprises
set state = 'APPROVED';
