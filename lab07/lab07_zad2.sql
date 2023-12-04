# pkt 1

select rodzaj,sum(ilosc*waga) as suma from zasob group by rodzaj;

# pkt 2

select * from zasob;
select nazwa,avg(waga) from zasob where ilosc>=4 group by nazwa having sum(waga)>10;

# pkt 3

select count(distinct nazwa),rodzaj from zasob group by rodzaj having min(ilosc)>1;
