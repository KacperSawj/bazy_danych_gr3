# pkt 1
create table archiwum_wyprawy (
id_wyprawy int,
nazwa varchar(50),
data_rozpoczecia date,
data_zakonczenia date,
kierownik varchar(50)
);

DELIMITER $$

$$ DELIMITER ;