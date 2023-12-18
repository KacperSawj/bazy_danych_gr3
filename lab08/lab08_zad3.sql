# pkt 1
select s.nazwa as nazwa_sektora, ifnull(count(ew.sektor),0) as ilosc_odwiedzin from wyprawa w
left join etapy_wyprawy ew on w.id_wyprawy=ew.idWyprawy
left join sektor s on ew.sektor=s.id_sektora
group by s.nazwa;

# pkt 2
select k.nazwa, if(count(u.id_uczestnika) > 0,'brał udział w wyprawie','nie brał udział w wyprawie') from kreatura k
left join uczestnicy u on k.idKreatury=u.id_uczestnika
left join wyprawa w on w.id_wyprawy=u.id_wyprawy
group by k.nazwa;