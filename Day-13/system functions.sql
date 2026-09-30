USE flipkart;

-- =============================
-- SYSTEM FUNCTIONS
-- =============================

SELECT VERSION();
SELECT DATABASE();
SELECT USER();
SELECT CONNECTION_ID();

create table customers(
id int auto_increment primary key,
name varchar(50),
city varchar(50)
);

insert into customers(name,city) 
values("rahul","hyderabad");

select last_insert_id();