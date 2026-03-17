create database Car;
 
drop table if exists Car; 

create table if not exists Car(
    id uuid primary key default gen_random_uuid(),
    model varchar(50) not null,
    brend varchar(30) not null,
    categoryId int not null,
    tanirovka boolean not null,
    motor decimal(3.1) not null,
    year date not null,
    color varchar(30) not null,
    distance int not null

);

alter table Car rename column model to model1;
alter table Car add column price int not null;
alter table Car alter column dictance  type bigint;
alter table Car drop column brend;

insert into Car (model1, categoryId, tanirovka, motor, year, color, distance, price) values ('BMW M5', 2, true, 4.4, '2023-05-15', 'Marina Bay Blue', 5000, 110000);
insert into Car (model1, categoryId, tanirovka, motor, year, color, distance, price) values ('BMW X7', 3, false, 3.0, '2022-11-10', 'Black Sapphire', 15000, 95000);

select * from Car;

select model1, price from Car where price > 105000;

update car set price = 100000 where model1= 'BMW M5';
delete from Car where model1= 'BMW X7';




create database fruit;
 
drop table if exists fruit; 

create table if not exists fruit(
    id uuid primary key default gen_random_uuid(),
    name varchar(50) not null,
    fresh int not null,
    arr_date int not null,
    miqdor int not null,
    category varchar not null

);

alter table fruit rename column miqdor to miqdori;
alter table fruit add column price int not null;
alter table fruit alter column fresh  type boolean;
alter table fruit drop column arr_date;

insert into fruit (name, fresh, miqdori, category, price) values ('avacado', true, 100,'tropical',50000);
insert into fruit (name, fresh, miqdori, category, price) values ('mandarin', true, 100,'sitrus', 30000);

select * from fruit;

select name, price from fruit where price > 40000;

update fruit set price = 45000 where name= 'avacado';
delete from fruit where name= 'mandarin';





create database animal;
 
drop table if exists animal; 

create table if not exists animal(
    id uuid primary key default gen_random_uuid(),
    name varchar(50) not null,
    age varchar not null,
    weight int not null,
    gender varchar(10) not null

);

alter table animal rename column name to name1;
alter table animal add column species varchar not null;
alter table animal alter column age  type int;
alter table animal drop column gender;

insert into animal (name1, age, weight, species) values ('fil1', 10, 2000, 'fil');
insert into animal (name1, age, weight, species) values ('fil2', 12, 2500, 'fil');

select * from animal;

select name1, age from animal where age > 10;

update animal set age = 9 where name1= 'fil1';
delete from animal where name1= 'fil2';

