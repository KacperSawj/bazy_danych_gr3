# zad1
select d.nazwa, min(p.pensja), max(p.pensja), avg(p.pensja) from dzial d
inner join pracownik p on p.dzial = d.id_dzialu
group by d.id_dzialu;

# zad2
select k.pelna_nazwa, sum(pz.ilosc*pz.cena) as wartosc from zamowienie z
inner join klient k on z.klient=k.id_klienta
inner join pozycja_zamowienia pz on z.id_zamowienia=pz.zamowienie
group by z.id_zamowienia
order by wartosc desc limit 10;

# zad3
select year(z.data_zamowienia) as rok, sum(pz.ilosc*pz.cena) as wartosc from zamowienie z
inner join pozycja_zamowienia pz on z.id_zamowienia=pz.zamowienie
group by rok
order by wartosc asc;

# zad4
select sum(pz.ilosc*pz.cena) as wartosc_anulowanych from zamowienie z
inner join pozycja_zamowienia pz on z.id_zamowienia=pz.zamowienie
inner join status_zamowienia sz on z.status_zamowienia=sz.id_statusu_zamowienia
where sz.id_statusu_zamowienia = 6;

# zad5
select ak.miejscowosc, count(z.id_zamowienia), sum(pz.ilosc*pz.cena) from zamowienie z
inner join klient k on z.klient = k.id_klienta
inner join adres_klienta ak on k.id_klienta = ak.klient
inner join pozycja_zamowienia pz on z.id_zamowienia = pz.zamowienie
group by ak.miejscowosc;

# zad6
select sum(pz.ilosc*pz.cena) as dot_dochod from zamowienie z
inner join pozycja_zamowienia pz on z.id_zamowienia = pz.zamowienie
where status_zamowienia = 5;

# zad7
select year(z.) sum(pz.ilosc*pz.cena)-sum(pz.ilosc*t.cena_zakupu) as dochod from zamowienie z
inner join pozycja_zamowienia pz on z.id_zamowienia = pz.zamowienie
inner join towar t on pz.towar = t.id_towaru;
