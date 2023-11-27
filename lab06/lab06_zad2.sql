select * from kreatura;
select * from zasob;

# pkt 1

select * from kreatura where rodzaj!="wiedzma" and udzwig>50;

# pkt 2

select * from zasob where waga>2 and waga<5;

# pkt 3

select * from kreatura where nazwa like "%or%" and udzwig>30 and udzwig<70;