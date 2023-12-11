# pkt 1


# pkt 2
select * from uczestnicy;
select k.nazwa from kreatura k
left join wyprawa w on w.kierownik=k.idKreatury
left join uczestnicy u on w.id_wyprawy=u.id_wyprawy
where id_uczestnika is null;

#pkt 3
select w.nazwa, sum(e.ilosc) as ilosc_ekwipunku from wyprawa w
left join uczestnicy u on w.id_wyprawy=u.id_wyprawy
left join kreatura k on u.id_uczestnika=k.idKreatury
left join ekwipunek e on k.idKreatury=e.idKreatury
group by w.nazwa;
