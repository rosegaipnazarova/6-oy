create database Car;

create table if not exists Car{
    id serial primary key,
    model varchar(50),
    brend varchar(30),
    categoryId int(),
    tanirovka boolean(),
    motor int(2),
    year date(),
    color varchar(30),
    distance int(10)

};

alter table Car rename column model to model1;
alter table Car add column price to int;
alter table Car alter column dictance  type bigint;
alter table Car drop column brend;
alter table Car rename column model to model1;

