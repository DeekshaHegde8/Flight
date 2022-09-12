customer details
flight scheduled
create table customer(c_id int primary key,name varchar(30) not null,address varchar(250) not null,phone bigint not null);
create table flight(f_id int primary key,from_location varchar(25) not null,to_location varchar(25) not null,dep_time datetime not null,arr_time datetime not null,seats int not null);
create table ticket(t_id int primary key,c_id int,cost int,f_id int, foreign key(c_id) references customer(c_id),foreign key(f_id) references flight(f_id));
 insert into customer values(1,"deeksha","siddapur",9731968163);
 insert into customer values(2,"dheeraj","maghegar",9731968162);
 insert into customer values(3,"smita","talavata",9731968161);
  insert into customer values(4,"guru","bangalore",9731968461);
insert into customer values(5,"manu","bangalore",9831968461);

 alter table flight add column cost int;

insert into flight values(2,"bnglr","hyderabad","2022-09-01 06:06:06","2022-09-01 09-09-09",240,1200);
insert into flight values(3,"chennai","pune","2022-09-02  06:06:06","2022-09-02 09-09-09",240,1200);

insert into flight values(4,"pune","chennai","2022-09-02  02:02:02","2022-09-02 09-09-09",240,1200);
alter table ticket drop cost;
insert into ticket values(1,1,1);
insert into ticket values(2,1,2);
insert into ticket values(3,2,3);
 insert into ticket values(4,3,4);
insert into ticket values(5,4,4);

 select c.c_id,c.name,t.t_id,t.c_id,t.f_id,f.cost from customer c,ticket t,flight f where c.c_id=t.c_id and t.f_id=f.f_id;
select  * from flight where dep_time="2022-09-01 02-02-02";


1) boarding details
select * from flight;

2)customer ticket
select c.c_id as customerID,c.name as customerName,t.t_id as ticketID,t.f_id as flightID ,f.cost as cost,f.from_location fromLocation,f.to_location as toLocation,f.dep_time as departureTime,f.arr_time as arrivingTime from customer c,ticket t,flight f where c.c_id=t.c_id and t.f_id=f.f_id;

3)Flight wise 
select t.f_id as flightID, sum(f.cost) as totalRevenue from ticket t,flight f where t.f_id=f.f_id group by t.f_id;



