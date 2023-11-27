select * from zasob;

# pkt 1

select idZasobu,nazwa,concat('waga(netto): ',0.7*waga*ilosc),concat('waga odpadków to: ',0.3*waga),dataPozyskania from zasob where rodzaj='jedzenie';

# pkt 2

select * from zasob where rodzaj is null;

# pkt 3

select distinct rodzaj,nazwa from zasob where nazwa like "Ba%" or nazwa like "%os" order by nazwa asc;