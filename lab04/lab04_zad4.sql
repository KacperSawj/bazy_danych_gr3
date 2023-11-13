CREATE TABLE `przetwory` (
`id_przetworu` int not null,
`rok_produkcji` int default '1654',
`id_wykonawcy` int,
`zawartosc` varchar(100),
`dodatek` varchar(100) default 'papryczka_chilli',
`id_konsumenta` int,
PRIMARY KEY (`id_przetworu`),
KEY `id_wykonawcy` (`id_wykonawcy`),
KEY `id_konsumenta` (`id_konsumenta`),
CONSTRAINT `przetwory_ibfk_1` FOREIGN KEY (`id_wykonawcy`) REFERENCES `postac` (`id_postaci`) ON DELETE SET NULL,
CONSTRAINT `przetwory_ibfk_2` FOREIGN KEY (`id_konsumenta`) REFERENCES `postac` (`id_postaci`) ON DELETE SET NULL
);
insert into przetwory values(default,default,1,bigos,default,3);