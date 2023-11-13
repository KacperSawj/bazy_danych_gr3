insert into postac values('Thor','wiking',0001-10-23,2000);
insert into postac values('Loki','wiking',0001-10-23,2000);
insert into postac values('Odin','wiking',0001-10-23,2000);
insert into postac values('Abel','wiking',0001-10-23,2000);
insert into postac values('Marc','wiking',0001-10-23,2000);
create table `statek` (
`nazwa_statku` varchar(100) NOT NULL,
`rodzaj_statku` enum('statek1','statek2'),
`data_wodowania` int,
`max_ladownosc` int unsigned,
primary key (`nazwa_statku`)
);
insert into statek values('statek1', 'statek1', 2000, 20);
insert into statek values('statek2', 'statek2', 1999, 15);
alter table postac add column funkcja varchar(50);
update postac set funkcja="kapitan" where nazwa="Bjorn";
alter table postac add column statek varchar(100);
alter table postac add foreign key (statek) references statek(nazwa_statku);
update postac set statek="statek1" where id_postaci < 3;
update postac set statek="statek2" where id_postaci >= 4;
delete from izba where nazwa_izby='spizarnia' ;
drop table izba;