delete from dept where dep_id=1;

drop table dept;

update student_details set marks=100 where id='1';

select * from student_details;

alter table student_details add results varchar(10);

alter table student_details drop results;

alter table student_details modify results int;

alter table student_details modify results varchar(10);

select * from student_details;

select * from student_table where id in(2,4,6);

select * from student_table where id>=3 in (select id from student_table where dept='civil' || dept='mech');


truncate table student_table;

alter table student_table add country varchar(50);

create table sales(
salesid int not null primary key,
salesname varchar(20),
address varchar(20)
);

create table order_sales(
id int primary key,
productname varchar(15),
address varchar(15),
salesid int,
constraint FK_ORDER foreign key (salesid) references sales(salesid) );


select * from sales s left join order_sales p on s.salesid=p.salesid;

select s.salesid,s.salesname,s.address,p.id, p.productname from sales s right join order_sales p on s.salesid=p.salesid;