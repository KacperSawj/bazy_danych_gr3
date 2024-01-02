# pkt 1
create table archiwum_wyprawy (
id_wyprawy int,
nazwa varchar(200),
data_rozpoczecia date,
data_zakonczenia date,
kierownik varchar(30)
);

create table infs_sawickik.wyprawa
select * from wikingowie.wyprawa;

select * from wyprawa;

DELIMITER //
create trigger before_delete_wyprawa
before delete on wyprawa
for each row
begin
	if wyprawa.kierownik is not null and wyprawa.kierownik = kreatura.idKreatury
    then
		insert into archiwum_wyprawy values(
        wyprawa.id_wyprawy,
        wyprawa.nazwa,
        wyprawa.data_rozpoczecia,
        wyprawa.data_zakonczenia,
        (select concat(k.imie,' ',k.nazwisko) from kreatura k 
        left join wyprawa w on w.kierownik = k.idKreatury 
        where k.idKreatury=w.kierownik));
	end if;
end
// DELIMITER ;


show create table wikingowie.wyprawa;

# pokazane przez professora

DELIMITER //
create trigger wyprawa_after_delete
after delete on wyprawa
for each row
begin
insert into archiwum_wyprawy 
select w.id_wyprawy, w.nazwa, w.data_rozpoczecia, w.data_zakonczenia, k.nazwa 
from wyprawa w
inner join kreatura k on k.idKreatury=w.kierownik
where id_wyprawy=old.id_wyprawy;
end
// DELIMITER ;