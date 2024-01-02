# pkt 1
select * from kreatura;

DELIMITER //
create trigger kreatura_before_insert
before insert on kreatura
for each row
begin
	if new.waga <= 0
	then
		set new.waga = 1;
	end if;
end
// 
DELIMITER ;