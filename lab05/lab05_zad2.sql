# pkt a
alter table postac add column pesel char(11) first;
update postac set pesel='12345678910' where id_postaci=1;
select * from postac;
update postac set pesel='12345678910'+ id_postaci;
alter table postac add primary key(pesel); 

# pkt b

alter table postac modify rodzaj enum('wiking','ptak','kobieta','syrena');

# pkt c

insert into postac values('12345678917',7,'Gertruda Nieszczera','syrena',2000-10-10,25,null,null);
select * from postac;