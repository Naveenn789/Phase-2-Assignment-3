drop database ExerciseDb

create database ExerciseDb

use ExerciseDb

create table Products
(PId int primary key ,
PQ int not null check(PQ>=1),
PPrice float not null,
DiscountPercent float not null,
manufacturingDate Date)

insert into Products values(1,2,1000,0.05,'12/27/2021')
insert into Products values(2,7,9000,0.18,'07/19/2022')
insert into Products values(3,5,700,0.10,'09/03/2019')
insert into Products values(4,1,2300,0.05,'12/19/2020')
insert into Products values(5,10,7600,0.20,'01/01/2023')

select * from Products

create function Dispaly()
returns table
As
return (select PId,PQ,PPrice,PPrice*PQ*DiscountPercent as 'Discounted Price',(PPrice*PQ)-(PPrice*PQ*DiscountPercent) as 'After Discount Product Price' from Products)

select * from Dispaly()


