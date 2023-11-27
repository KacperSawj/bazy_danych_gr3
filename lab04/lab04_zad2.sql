CREATE TABLE `walizka` (
`id_walizki` int NOT NULL AUTO_INCREMENT,
`pojenosc` int unsigned DEFAULT NULL,
`kolor` enum('rozowy','czerwony','teczowy','zolty'),
`id_wlasciciela` int DEFAULT NULL,
PRIMARY KEY (`id_walizki`),
KEY `id_wlasciciela` (`id_wlasciciela`),
CONSTRAINT `walizka_ibfk_1` FOREIGN KEY (`id_wlasciciela`) REFERENCES `postac` (`id_postaci`) ON DELETE CASCADE
);
alter table walizka alter column kolor set default 'rozowy';

insert into walizka values(1,40,"czerwony",1);
insert into walizka values(2,55,default,1);

select * from walizka;