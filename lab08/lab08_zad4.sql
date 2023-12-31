# pkt 1
select w.nazwa, sum(length(ew.dziennik)) from wyprawa w
left join etapy_wyprawy ew on w.id_wyprawy=ew.idWyprawy
group by w.nazwa
having sum(length(ew.dziennik)) < 400;

# pkt 2
select * from uczestnicy;

select id_wyprawy, count(id_uczestnika) from uczestnicy
where id_uczestnika is not null
group by id_wyprawy;

select k.nazwa as nazwa, sum(z.waga*e.ilosc)/count(distinct u.id_uczestnika) as waga from kreatura k
left join ekwipunek e on k.idKreatury=e.idKreatury
left join zasob z on e.idZasobu=z.idZasobu
left join uczestnicy u on k.idKreatury=u.id_uczestnika 
left join wyprawa w on u.id_wyprawy=w.id_wyprawy
where u.id_uczestnika is not null
and z.waga is not null
and e.ilosc is not null
group by k.nazwa;
