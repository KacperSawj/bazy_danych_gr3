# pkt a

select * from postac order by wiek desc;
delete from postac where id_postaci in (8, 7);
select * from postac where rodzaj='wiking' and nazwa!='Bjorn';

# pkt b

set foreign_key_checks = 0;

# krok1

# usunięcie kluczy obcych
#tabela: walizka, przetwory

alter table walizka drop foreign key walizka_ibfk_1;
alter table przetwory drop foreign key przetwory_ibfk_1;
alter table przetwory drop foreign key przetwory_ibfk_2;

# krok2

# problem1 - atrybut auto increment
alter table postac change id_postaci id_postaci int;

# alter table ... change nazwa_kolumny nowa_nazwa + definicja;
# lub przez modify
alter table postac modify id_postaci int;

# krok3

alter table postac drop primary key;



