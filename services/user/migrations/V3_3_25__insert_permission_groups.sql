alter table users.transaction_hitories
rename column note to description;

alter table users.transaction_hitories
    alter column description set data type varchar(200);