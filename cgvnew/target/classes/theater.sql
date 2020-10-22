create table tlarge(
tl_num int primary key not null 
,tl_nm varchar(20)
);
create table tmiddle(
tm_num int primary key not null
,tm_nm varchar(20)
,tl_num int
,th_add varchar(200)
,th_addn varchar(200)
,th_bus varchar(500)
,th_sub varchar(200)
,FOREIGN KEY (tl_num) REFERENCES tlarge(tl_num)
);
create table tsmall(
ts_num int primary key not null
,ts_nm varchar(20)
,ts_snum int
,ts_snm varchar(20)
,tm_num int
,FOREIGN KEY (tm_num) REFERENCES tmiddle(tm_num)
);
=========대분류 VALUE=====================================

insert into tlarge values( 1,'서울');
insert into tlarge values( 2,'경기');
insert into tlarge values( 3,'인천');
insert into tlarge values( 4,'강원');
insert into tlarge values( 5,'대전/충청');
insert into tlarge values( 6,'대구');
insert into tlarge values( 7,'부산/울산');
insert into tlarge values( 8,'경상');
insert into tlarge values( 9,'광주/전라/제주');

