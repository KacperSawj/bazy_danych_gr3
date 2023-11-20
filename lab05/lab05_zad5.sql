# pkt a
select * from postac;
select * from statek;
update postac set statek=null;

# pkt b

delete from postac where pesel='12345678916';

# pkt c

delete from statek where nazwa_statku='statek1' or nazwa_statku='statek2';

alter table marynarz drop foreign key marynarz_ibfk_1;

# pkt d

drop table statek;

alter table postac drop foreign key postac_ibfk_1;

# pkt e

create table zwierz (
id_zwierza int auto_increment,
nazwa varchar(60),
wiek int,
primary key(id_zwierza)
);