create database cdac_practice_2;
use cdac_practice_2;
/*create table SEMP with following structure*/
create table semp
(
	EMPNO char(4),
    EMPNAME char(20),
    BASIC float(9,2),
    DEPTNO char(2),
    DEPTHEAD char(4)
);

/*Create table SDEPT with following structure*/
create table sdept
(
	DEPTNO char(2),
    DEPTNAME char(15)
);

/*Insert into sdept table the following values*/
insert into sdept(DEPTNO,DEPTNAME)
values('10','Development');
insert into sdept(DEPTNO,DEPTNAME)
values('20','Training');

/*insert into semp table the following values*/
insert into semp(EMPNO,EMPNAME,BASIC,DEPTNO,DEPTHEAD)
values('0001','Sunil','6000','10','NULL');
insert into semp(EMPNO,EMPNAME,BASIC,DEPTNO,DEPTHEAD)
values('0002','Hiren','8000','20','NULL');
insert into semp(EMPNO,EMPNAME,BASIC,DEPTNO,DEPTHEAD)
values('0003','Ali',4000,'10','0001');
insert into semp(EMPNO,EMPNAME,BASIC,DEPTHEAD)
values('0004','George',6000,'0002');

select * from semp;
select * from sdept;

/*create spj table and insert values*/
create table s
(
	`S#` int(4),
    SNAME varchar(20),
    State varchar(20),
    City varchar(20)
);
create table p
(
	`p#` int (4),
    PNAME varchar(15),
    color varchar(15),
    weight float(3,2),
    city varchar(20)
);
create table j
(
	`j#` int(4),
    jname varchar(20),
    city varchar(20)
);
create table spj
(
	`s#` int(4),
    `p#` int(4),
    `j#` int(4),
    Qty int(4)
);
insert into s values(0001,'Pandurang','UK','London');
insert into s values(0002,'Sakharam','UK','Manchester');
insert into s values(0003,'Tukaram','UK','Leeds');
insert into s values(0004,'Atmaram','UK','London');

insert into p values(0100,'Guitar','Brown','2.2','London');
insert into p values(0101,'Violin','Brown','1.75','Bristol');
insert into p values(0102,'Cello','Red','3.45','Westminster');
insert into p values(0104,'Sitar','yello','6.2','London');

insert into j values(1000,'Orchestra','Dublin');
insert into j values(1002,'Symphony','Southampton');
insert into j values(1004,'Opera','London');

insert into spj values(0001,0104,1000,0020);
insert into spj values(0004,0101,1002,0028);
insert into spj values(0002,0102,1000,0040);
insert into spj values(0003,0100,1002,0050);
insert into spj values(0003,0101,1004,0010);
insert into spj values(0003,0101,1004,0030);

/*Display all data fro s table*/
select * from s;
/*Display only the S# and SNAME fields from the S table*/
/*select s# sname from s;*/
/*Display the PNAME and COLOR from the P table for the CITY=”London”.*/
select pname,color from p where city = 'London';
/*Display all the Suppliers from London*/
select sname from s where city='London';
/*Display all the Suppliers from Leeds or Manchester*/
select sname from s where city='Leeds'or'Manchester';
/*Display all the Projects in Lomdon*/
select jname from j where city='London';
