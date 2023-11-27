select * from wikingowie.kreatura;
select * from wikingowie.uczestnicy;
select * from wikingowie.sektor;
select * from wikingowie.etapy_wyprawy;

# pkt 1

create table kreatura select * from wikingowie.kreatura;
create table zasob select * from wikingowie.zasob;
create table ekwipunek select * from wikingowie.ekwipunek;

# pkt 2

select * from zasob;

# pkt 3

select * from zasob where rodzaj="jedzenie";

# pkt 4
select * from ekwipunek;
select idZasobu,ilosc from ekwipunek where idKreatury=1 or idKreatury=3 or idKreatury=5;