# pkt 1
CREATE TABLE `postac` (
`pesel` char(11) NOT NULL,
`id_postaci` int NOT NULL,
`nazwa` varchar(40),
`rodzaj` enum('wiking','ptak','kobieta','syrena','waz'),
`data_ur` date DEFAULT NULL,
`wiek` int unsigned DEFAULT NULL,
`funkcja` varchar(50) DEFAULT NULL,
`statek` varchar(100) DEFAULT NULL,
PRIMARY KEY (`pesel`),
KEY `statek` (`statek`)
);

select * from postac;

# pkt 2

insert into postac values(1,"Bjorn","wiking","1700-10-23",323);

insert into postac values(2,"Drozd","ptak","1701-11-24",321);

insert into postac values(3,"Tesciowa","kobieta","0999-06-12",646);

# pkt 3

update postac set wiek=88 where id_postaci=3;

