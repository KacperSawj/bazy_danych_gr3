# pkt a
update postac set statek='statek1' where nazwa like '%a%';
select * from postac;

select * from postac where nazwa regexp '[0-9]{1,2}-[0-9]{3}';
# [0-9] - dowolna cyfra ze zbioru
# [a-k] - dowolna litera ze zbioru
# [aoiuey] - jeden ze znaków ([] - zbiór)
# {} - określenie krotności
# {n} - dokłandni n razy
# {n, m} - co najmniej n razy, nie więcej niż m razy
# {n, } - co najmniej n razy

select curdate();
# month, day, hour, minutes, seconds
# select now(); data i czas
# select curdate(); tylko bieżąca data

# pkt b
select * from statek where data_wodowania>='1901-01-01' and data_wodowania<='2000-12-31';

update statek set max_ladownosc = 0.7 * max_ladownosc where data_wodowania>='1901-01-01' and data_wodowania<='2000-12-31';

# pkt c
alter table postac modify wiek int unsigned check (wiek < 1000);
alter table postac add check (wiek < 1000);
show create table postac;
