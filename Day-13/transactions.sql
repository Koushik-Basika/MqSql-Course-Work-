create database bankdb;
use bankdb;

create table Accounts(
acc_no int primary key,
name varchar(50),
balance decimal(10,2)
);

insert into accounts values
(101,"arjun",15000.00),
(102,"priya",10000.00);

select * from accounts;

select @@autocommit;
set autocommit=0;

start transaction;

update accounts
set balance=balance-5000
where acc_no=101;

update accounts
set balance=balance+5000
where acc_no=102;

select * from accounts;

commit;

select * from accounts;

START TRANSACTION;

UPDATE Accounts
SET Balance = Balance - 2000
WHERE Acc_no = 101;

SELECT * FROM Accounts;

ROLLBACK;

SELECT * FROM Accounts;

start transaction;

update accounts
set balance=balance-1000
where acc_no=101;

select * from accounts;

savepoint after_deduction;

update accounts
set balance=balance+1000
where acc_no=102;

select * from accounts;

rollback to after_deduction;

commit;

select * from accounts;




