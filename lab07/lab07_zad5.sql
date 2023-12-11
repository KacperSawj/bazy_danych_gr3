# pkt 1
select * from kreatura;
select k.rodzaj, avg(z.waga*e.ilosc) from kreatura k
left join ekwipunek e on k.idKreatury=e.idKreatury
left join zasob z on e.idZasobu=z.idZasobu
where k.rodzaj not in ('malpa','waz') and e.ilosc<30
group by k.rodzaj;

# pkt 2
select a.nazwa, a.rodzaj, a.dataUr from kreatura a,
(select rodzaj, min(dataUr) min, max(dataUr) max from kreatura group by rodzaj) b
where b.min = a.dataUr or b.max = a.dataUr;

# pkt 2 z union
select 'najmlodsza', a.maxData, b.nazwa, a.rodzaj
from (select max(dataUr) maxData, rodzaj from kreatura group by rodzaj) a,
(select nazwa, dataUr from kreatura) b
where a.maxData = b.dataUr
union
select 'najstarsza', a.minData, b.nazwa, a.rodzaj
from (select min(dataUr) minData, rodzaj from kreatura group by rodzaj) a,
(select nazwa, dataUr from kreatura) b
where a.minData = b.dataUr;