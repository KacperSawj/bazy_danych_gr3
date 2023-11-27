select * from kreatura;
select * from zasob;
# pkt 1

select distinct rodzaj from zasob;

# pkt 2

select concat(nazwa,' - wi',rodzaj) from kreatura;

# pkt 3

select idzasobu,nazwa,ilosc*waga,dataPozyskania,rodzaj from zasob where dataPozyskania>'1999-12-31' and dataPozyskania<'2008-01-01';