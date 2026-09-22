create database Instagram;
use Instagram;
create table Users(
User_id int primary key,
User_name varchar(50) unique not null,
Full_name varchar(50) not null,
Email varchar(100) unique not null,
Password varchar(20) not null,
bio text,
is_verified boolean default False,
create_at datetime default current_timestamp
);

desc user;

alter table users
add column Phone_Number varchar(15);

alter table users
modify column Full_Name varchar(150);

alter table users
change column Bio Biography Text;

alter table user
drop column Phone_Number;

alter table users
rename to user_info;

desc user_info;

truncate table user_info;

drop table user_info;

create table posts(
Post_Id int primary key,
User_Id int not null,
Caption Text,
Image_URL varchar(255) not null,
Likes_Count int default 0,
Created_At timestamp default current_timestamp,
foreign key (User_Id) references Users(User_Id)
);

create table Comments(
Comment_Id int primary key,
Post_Id int not null,
User_Id int not null,
Comment_Text varchar(255) not null,
Created_At datetime default current_timestamp,
foreign key (Post_Id) references posts(Post_Id),
foreign key (User_Id) references Users(User_Id)
);







