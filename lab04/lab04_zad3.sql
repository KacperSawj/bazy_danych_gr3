create table izba (
adres_budynku varchar(100) not null,
nazwa_izby varchar(100) not null,
matraz int unsigned,
wlasciciel int,
primary key(adres_budynku, nazwa_izby),
key wlasciciel (wlasciciel),
constraint wlasciciel foreign key (wlasciciel) references postac (id_postaci)
);
alter table izba add column kolor varchar(40) default 'czarny' after wlasciciel;
insert into izba values('Czerwona 123','spizarnia',40,1);