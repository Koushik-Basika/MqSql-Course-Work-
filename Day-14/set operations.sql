USE flipkart;

create table online_customers(
id int,
name varchar(50)
);

create table store_customers(
id int,
name varchar(50)
);

insert into online_customers Values
(1, 'Rahul'),
(2, 'Priya'),
(3, 'Arjun'),
(4, 'Sneha'),
(5, 'Anil'),
(6, 'Abdul'),
(7, 'Amani');

insert into store_customers values
(1, 'Rahul'),
(2, 'Arjun'),
(3, 'Kiran'),
(4, 'Sneha'),
(5, 'Anil'),
(6, 'Abdul'),
(7, 'Reena'),
(8,'Divya'),
(9,'Meena');

select name from online_customers
union
select name from store_customers;

select name from online_customers
union all
select name from store_customers;

select name from online_customers
where name in (select name from store_customers);

select name from online_customers
where name not in (select name from store_customers);

