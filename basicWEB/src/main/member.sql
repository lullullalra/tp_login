create table member(
	id varchar(10) primary key,
    pwd varchar(10) not null,
    name varchar(50) not null,
    email varchar(50) not null,
    joinDate datetime default now());

desc member;

insert into member values('admin', '1234', 'kim', 'a@a.com',now());
insert into member values('user', '1234', 'lee', 'b@a.com',now());
insert into member values('tester', '1234', 'park', 'c@a.com',now());

select * from member;