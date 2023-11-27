select * from zasob;
select * from kreatura;


# pkt 1

select * from zasob where dataPozyskania regexp '[0-9]{4}-[0,7,8]{2}-[0-9]{2}';

# pkt 2

select * from zasob order by waga asc;

# pkt 3

select * from kreatura order by dataUr asc limit 5;