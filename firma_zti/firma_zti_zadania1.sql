select * from pracownik;
# zad1
select imie, nazwisko, data_urodzenia from pracownik;

# zad2
select imie, nazwisko, (year(curdate())-year(data_urodzenia)) as wiek from pracownik;

# zad3
select d.nazwa, count(p.id_pracownika) as liczba_pracowników from pracownik p
left join dzial d on p.dzial=d.id_dzialu
group by d.nazwa;

# zad4
select k.nazwa_kategori, sum(sm.ilosc) from towar t
left join kategoria k on t.kategoria=k.id_kategori
left join stan_magazynowy sm on t.id_towaru=sm.towar
group by k.nazwa_kategori;

# zad5
select k.nazwa_kategori, group_concat(t.nazwa_towaru,", ") as produkty from towar t
left join kategoria k on t.kategoria=k.id_kategori
group by k.nazwa_kategori; 

# zad6
select concat(imie," ", nazwisko) as nazwa, round(avg(pensja), 2) as avg_pensja from pracownik
group by nazwa;

# zad7 
select concat(imie," ",nazwisko) as nazwa, avg(pensja) from pracownik
where (curdate()-data_zatrudnienia)>=5
group by nazwa;

# zad8
select * from status_zamowienia;
select t.nazwa_towaru, count(z.id_zamowienia) as kupione from zamowienie z
left join status_zamowienia sz on z.status_zamowienia=sz.id_statusu_zamowienia
left join pozycja_zamowienia pz on z.id_zamowienia=pz.zamowienie
left join towar t on pz.towar=t.id_towaru
where sz.id_statusu_zamowienia != 6
group by t.nazwa_towaru
order by kupione desc
limit 10;

# zad9
select * from zamowienie;
select z.numer_zamowienia, sum(pz.ilosc*pz.cena) as wartosc from zamowienie z
inner join pozycja_zamowienia pz on z.id_zamowienia=pz.zamowienie
where year(z.data_zamowienia)=2017 and quarter(z.data_zamowienia)=1
group by z.id_zamowienia;

# zad10
select p.imie, p.nazwisko, sum(pz.ilosc*pz.cena) as wartosc from zamowienie z
inner join pozycja_zamowienia pz on z.id_zamowienia=pz.zamowienie
inner join pracownik p on p.id_pracownika=z.pracownik_id_pracownika
group by p.id_pracownika
order by wartosc desc;