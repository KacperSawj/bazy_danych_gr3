# pkt 1
select * from kreatura;
select k.rodzaj, avg(z.waga*e.ilosc) from kreatura k
left join ekwipunek e on k.idKreatury=e.idKreatury
left join zasob z on e.idZasobu=z.idZasobu
where k.rodzaj not in ('malpa','waz') and e.ilosc<30
group by k.rodzaj;

# pkt 2
select p.rodzaj, p.min, p.max from
(select rodzaj, min(dataUr) min, max(dataUr) max from kreatura group by rodzaj) as p
group by p.rodzaj;