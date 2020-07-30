use cdac_practice;
/*Create the Orders table so that all onum values as well as all combinations of
cnum and snum are different from one another, and so that NULL values are
excluded from the date field.*/
show tables;
desc orders;
create table orders_1(onum int(4), amount float(7,2), Odate date, Cnum int(4), Snum int (4),
				constraint pk_orders primary key(onum,cnum,snum));
                
/*Create the Salespeople table so that the default commission is 10% with no
NULLS permitted, snum is the primary key, and all names fall alphabetically
between A and M, inclusive (assume all names will be uppercase).*/ 
desc salespeople;
create table salespeople_2
(
	Snum int(4),
    Sname varchar(10),
    City varchar(10),
    comm float(3,2) default .10 not null,
    check ( substr(upper(sname),1,1) between 'A' and 'M')
);
INSERT INTO salespeople_2 VALUES (10,'Ramesh','Mumbai');

/*Create the Orders table, making sure that the onum is greater than the cnum, and
the cnum is greater that the snum. Allow no NULLS in any of these three fields*/ 
desc orders;
create table orders_2
(
	Onum int(4) not null,
    Amount float(7,2),
    Odate date,
    Cnum int(4) not null,
    Snum int(4) not null,
    constraint ch_o_c_s check(onum>cnum and cnum>snum )
);
insert into orders_2 values
(1000,1500.50,'2020-07-29', 1500, 100);
INSERT INTO orders_2
VALUES(10010,10000,'1990-12-01',10000,10);
INSERT INTO orders_2
VALUES(10001,2000,'1990-12-02',10,1000);
INSERT INTO orders_2
VALUES(10021,
       2000,
       '1990-01-02',
       10,
       1002) ;              