# pkt 1
select * from kreatura;
select w.nazwa as nazwa_wyprawy, k.nazwa as nazwa_kreatury, datediff(w.data_rozpoczecia,k.dataUr) as wiek_w_dniach from kreatura k
left join uczestnicy u on k.idKreatury=u.id_uczestnika
left join wyprawa w on u.id_wyprawy=w.id_wyprawy
left join etapy_wyprawy ew on w.id_wyprawy=ew.idWyprawy
left join sektor s on ew.sektor=s.id_sektora
where s.nazwa = 'Chatka dziadka'and id_uczestnika is not null;