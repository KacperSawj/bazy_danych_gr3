# pkt 1

select sum(waga) from kreatura;
select count(waga) from kreatura;
select count(waga) from kreatura where waga is not null;
select avg(waga) from kreatura;

# pkt 2

select rodzaj,avg(waga),count(idKreatury) from kreatura group by rodzaj;

# pkt 3

select rodzaj,avg(year(curdate())-year(dataUr)) from kreatura group by rodzaj;