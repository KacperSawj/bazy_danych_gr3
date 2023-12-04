# pkt 1

select kreatura.nazwa,ekwipunek.ilosc from kreatura inner join ekwipunek on kreatura.idKreatury = ekwipunek.idKreatury group by kreatura.nazwa;

# pkt 2

select kreatura.nazwa,ekwipunek.ilosc,zasob.nazwa from kreatura inner join (ekwipunek, zasob) on (kreatura.idKreatury = ekwipunek.idKreatury and ekwipunek.idZasobu = zasob.idZasobu);

# pkt 3

select kreatura.nazwa,ekwipunek.ilosc  from kreatura left join ekwipunek on kreatura.idKreatury = ekwipunek.idKreatury where ekwipunek.ilosc is null;

select distinct idKreatury from ekwipunek;

select idKreatury from kreatura where idKreatury not in (select idKreatury from ekwipunek where idKreatury is not null);