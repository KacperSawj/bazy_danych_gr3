# pkt a
alter table postac modify rodzaj enum('wiking','ptak','kobieta','syrena','waz');
insert into postac values(12345678918,8,'Loko','waz',2001-06-12,20,null,null);
select * from postac;

#pkt b
# stworzenie tabeli na wzór innej, bez danych z kluczem głównym, bez kluczy obcych
CREATE TABLE marynarz like postac;

# stworzenie tabeli na podstawie zapytania select z danymi, bez kluczy
show create table postac;

create table marynarz as 
select id_postaci, nazwa, statek
from postac;

insert into marynarz select * from postac where statek is not null;
