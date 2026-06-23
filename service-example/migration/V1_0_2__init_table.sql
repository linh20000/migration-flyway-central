CREATE TYPE Product_Type AS ENUM ('NORMAL', 'BOOK');
CREATE TYPE Product_State AS ENUM ('DRAFT', 'PENDING', 'PUBLIC', 'REJECT', 'DELETED');
CREATE TYPE Discount_Type AS ENUM ('RATE', 'COST');
CREATE TABLE product (
id bigserial primary key,
name varchar(255) not null,
category_id integer not null,
code varchar(255) not null  unique,
description text,
packing_size  integer[],
weight  integer,
state  Product_State not null,
type  Product_Type not null,
discount_type  integer,
discount_value float(3),
created_at  timestamp without time zone default current_timestamp ,
updated_at  timestamp without time zone default current_timestamp
);

CREATE TYPE Base_State AS ENUM ('PENDING', 'PUBLIC','DELETED');
CREATE TABLE category (
id serial primary key,
name varchar(255) not null,
parent_id integer,
level integer not null,
state Base_State not null,
sort integer not null default 0,
image varchar(255),
created_at  timestamp without time zone default current_timestamp ,
updated_at  timestamp without time zone default current_timestamp
);

CREATE TABLE attribute (
id serial primary key,
name varchar(255) not null,
state Base_State not null,
require boolean default false,
created_at  timestamp without time zone default current_timestamp ,
updated_at  timestamp without time zone default current_timestamp
);

CREATE TABLE rel_category_attribute (
id serial primary key,
category_id integer not null,
attribute_id integer not null,
created_at  timestamp without time zone default current_timestamp ,
updated_at  timestamp without time zone default current_timestamp
);

CREATE TABLE attribute_value (
id serial primary key,
value varchar(255) not null,
attribute_id integer not null,
state Base_State not null,
created_at  timestamp without time zone default current_timestamp ,
updated_at  timestamp without time zone default current_timestamp
);
CREATE TABLE rel_product_attribute (
id bigserial primary key,
product_id bigint not null,
attribute_id integer not null,
created_at  timestamp without time zone default current_timestamp,
updated_at  timestamp without time zone default current_timestamp
);

CREATE TABLE product_variant (
id         bigserial primary key,
product_id bigint not null,
attribute  jsonb[],
price      bigint not null,
sale_price bigint not null,
created_at timestamp without time zone default current_timestamp,
updated_at timestamp without time zone default current_timestamp
);

CREATE TABLE inventory (
id bigserial primary key,
quantity integer not null,
sold_quantity integer not null,
created_at  timestamp without time zone default current_timestamp,
updated_at  timestamp without time zone default current_timestamp
);

CREATE TYPE product_rent_type AS ENUM ('RENT', 'PAID');
CREATE TABLE sub_product (
id bigserial primary key,
product_id bigint not null,
product_variant_id bigint not null,
company_id integer,
code varchar(255) not null,
aspect int not null,
state product_rent_type not null,
created_at  timestamp without time zone default current_timestamp,
updated_at  timestamp without time zone default current_timestamp
);
CREATE TYPE Product_Log_Type AS ENUM ('CREATE', 'UPDATE', 'DELETE', 'CHANGE_STATE', 'CHANGE_STOCK', 'RENT');
CREATE TABLE product_log (
id bigserial primary key,
product_id bigint not null,
sub_product_id bigint not null,
type Product_Log_Type not null,
value jsonb,
created_at  timestamp without time zone default current_timestamp,
updated_at  timestamp without time zone default current_timestamp
);
CREATE TABLE publishing_company (
id serial primary key,
name varchar(255) not null,
discount integer not null,
discount_value bigint not null,
created_at  timestamp without time zone default current_timestamp,
updated_at  timestamp without time zone default current_timestamp
);
CREATE TYPE Payment_Type AS ENUM ('COD', 'PAY');
CREATE TYPE Payment_State AS ENUM ('WAIT', 'PAID', 'CANCELED');
CREATE TYPE Payment_Partner AS ENUM ('NGANLUONG', 'MOMO', 'VNPAY');
CREATE TYPE Order_Type AS ENUM ('RENT', 'SELL');
CREATE TABLE orders (
id bigserial primary key,
code varchar (50) not null unique,
user_id integer not null,
total_money bigint not null default 0,
address varchar(255) not null,
discount_money bigint default 0,
metadata jsonb,
payment_type Payment_Type,
payment_state Payment_State,
payment_partner Payment_Partner,
type Order_Type,
user_detail jsonb,
agency jsonb,
batch_id bigint,
time_return  timestamp without time zone ,
created_at  timestamp without time zone default current_timestamp,
updated_at  timestamp without time zone default current_timestamp
);
CREATE TYPE Order_State AS ENUM ('DRAFT', 'NEW', 'CONFIRMED','SHIPPING', 'COMPLETED', 'FINISHED', 'CANCELED');
CREATE TYPE Shipping_State AS ENUM ('READYTOPIC', 'PICKING', 'SHIPPING','SHIPPED', 'RETURN', 'LOST', 'CANCELED', 'RECEIVED');
CREATE TYPE Cancel_By AS ENUM ('ADMIN', 'BUYER', 'SELLER', 'SHIPPING_PARTNER');
CREATE TABLE shop_order (
id bigserial primary key,
code varchar (50) not null unique,
shop_id integer not null,
shop jsonb,
order_id bigint,
total_money bigint default 0,
order_state Order_State,
shipping_state Shipping_State,
shipping_partner_id  integer ,
shipping_fee bigint not null default 0,
shipping_code  varchar(255),
shop_note varchar(255),
cancel_by  Cancel_By,
note  varchar(255),
shop_address jsonb,
created_at  timestamp without time zone default current_timestamp,
updated_at  timestamp without time zone default current_timestamp
);

CREATE TABLE product_rent (
id bigserial primary key,
product_id  bigint not null,
sub_product_id  bigint not null,
order_line_id  bigint not null,
state  product_rent_type not null ,
user_detail jsonb not null ,
return_date timestamp without time zone,
created_at  timestamp without time zone default current_timestamp,
updated_at  timestamp without time zone default current_timestamp
);

CREATE TYPE order_log_type AS ENUM ('CHANGE_STATE', 'SHIPPING_CHANGE_STATE', 'PAYMENT_CHANGE_STATE', 'ORDER_CREATE', 'ORDER_FINISH', 'ORDER_CANCEL');
CREATE TABLE order_log (
id bigserial primary key,
shop_order_id   bigint not null,
order_id  bigint not null,
type order_log_type not null,
data  jsonb not null ,
created_at  timestamp without time zone default current_timestamp,
updated_at  timestamp without time zone default current_timestamp
);