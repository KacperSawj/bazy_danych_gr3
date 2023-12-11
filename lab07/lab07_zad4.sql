# pkt 1
select kreatura.nazwa, zasob.nazwa from kreatura natural join ekwipunek, zasob where year(dataUr) like "167%";

# pkt 2
select kreatura.nazwa from kreatura 
left join ekwipunek on kreatura.idKreatury=ekwipunek.idKreatury 
left join zasob on ekwipunek.idZasobu=zasob.idZasobu
where zasob.rodzaj="jedzenie"
order by kreatura.dataUr ASC limit 5;

# pkt 3

select concat(k1.nazwa," - ",k2.nazwa) as nazwy from kreatura k1, kreatura k2 
where k1.idKreatury-k2.idKreatury=5;