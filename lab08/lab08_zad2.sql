# pkt 1
select * from wyprawa;
select w.nazwa, count(id_uczestnika) as liczba_uczestnikow, group_concat(k.nazwa) as uczestnicy from kreatura k
left join uczestnicy u on k.idKreatury=u.id_uczestnika
left join wyprawa w on u.id_wyprawy=w.id_wyprawy
group by w.nazwa;

# pkt 2
select w.nazwa as nazwa_wyprawy, ew.dziennik as dziennik_etapu, s.nazwa as nazwa_sektora, k.nazwa as kierownik from wyprawa w
left join etapy_wyprawy ew on w.id_wyprawy=ew.idWyprawy
left join sektor s on ew.sektor=s.id_sektora
left join kreatura k on w.kierownik=k.idKreatury
order by w.data_rozpoczecia and ew.kolejnosc DESC;
