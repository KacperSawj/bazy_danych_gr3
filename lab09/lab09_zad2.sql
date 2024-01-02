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
		set archiwum_wyprawa.id_wyprawy = wyprawa.id_wyprawy;
		set archiwum_wyprawa.nazwa = wyprawa.nazwa;
        set archiwum_wyprawa.data_rozpoczecia = wyprawa.data_rozpoczecia;
        set archiwum_wyprawa.data_zakonczenia = wyprawa.data_zakonczenia;
		set archiwum_wyprawa.kierownik = 
        (select concat(k.imie, ' ', k.nazwisko) as nazwa from kreatura k
        left join wyprawa w on w.kierownik = k.idKreatury);
	end if;
end
// DELIMITER ;

show create table wikingowie.wyprawa;