# Schema Information

## products
column name            | data type | details
-----------------------|-----------|-----------------------------------
id                     | integer   | not null, primary key
product_name           | string    | not null, unique
price                  | integer   | not null
description            | text      | not null
specs                  | text      | not null
quantity               | integer   | not null



## products_categories
column name   | data type | details
--------------|-----------|-----------------------
id            | integer   | not null, primary key
product_id    | integer   | not null, foreign key (references products)
category_id   | integer   | not null, foreign key (references categories)


## categories
column name   | data type | details
--------------|-----------|-----------------------
id            | integer   | not null, primary key
section       | string    | not null, unique
department_id | integer   | not null, foreign key (references departments), indexed

## departments
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
title           | string    | not null, unique
parent_dept_id  | integer   | foreign key (references parent department), indexed


## reviews
column name | data type  | details
------------|------------|-----------------------
id          | integer    | not null, primary key
user_id     | integer    | not null, foreign key (references users), indexed
product_id  | integer    | not null, foreign key (references products), indexed
date        | datetime   | not null
score       | integer    | not null
title       | string     |
body        | text       |

## shopping_carts
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
user_id     | integer   | not null, foreign key (references users), indexed
product_id  | integer   | not null, foreign key (references products), indexed



## shipping_addresses
column name    | data type | details
------------   |-----------|-----------------------
id             | integer   | not null, primary key
user_id        | string    | not null, foreign key (references users), indexed
full_name      | string    | not null
address_one    | string    | not null
address_two    | string    |
city           | string    | not null
region         | string    | not null
zip            | integer   | not null
phone number   | integer   | not null


## payment_info
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
user_id     | integer   | not null, foreign key (references users), indexed
full_name   | string    | not null
expiration  | datetime  | not null
cc_token    | string    | not null

## order
column name   | data type | details
--------------|-----------|-----------------------
id            | integer   | not null, primary key
product_id    | integer   | not null, foreign key (references users), indexes
purchase_date | datetime  | not null
price         | integer   | not null

## user_orders
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
user_id     | integer   | not null, foreign key (references users), indexed
manifest_id | integer   | not null, foreign key (references order manifests, indexed)

## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
first_name      | string    | not null
last_name       | string    | not null
email           | string    | not null, indexed, unique
password_digest | string    | not null
session_token   | string    | not null, indexed, unique
