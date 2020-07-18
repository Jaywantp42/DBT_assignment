show databases;
use cdac_practice;
show tables;

/*Write two different queries that would produce all orders taken on October 3rd or 4th, 1990.*/
select * from orders;
select onum "order Number", odate "order date" from orders
where odate in('1990-10-03','1990-10-04');
select onum "Order Number", odate "Order Date" from orders
where odate= '1990-10-03' or odate='1990-10-04';
select onum "Order Number", odate "Order Date" from orders
where odate between'1990-10-03'and'1990-10-04';
/*3001	1990-10-03
  3003	1990-10-03
  3002	1990-10-03
  3005	1990-10-03
  3006	1990-10-03
  3007	1990-10-04*/

/*Write a query that will produce all the customers whose names begin with a letter from ‘A’ to ‘G’.*/
select * from customers;
select cname "Customer Name" from customers
where cname > 'A' and cname < 'H';
/*Giovanni
  Grass
  Clemens
  Cisneros*/

/*Write a query that selects all customers whose names begin with the letter ‘C’.*/
select cname "Customer Name" from customers
where cname like 'C%';
/*Clemens
  Cisneros*/

/*Write a query that selects all orders except those with zeroes or NULLs in the amt field.*/
select * from orders;
select onum as "Order Number" from orders
where amount not like 'NULL' or '0';

/*Write a query that selects all of the customers serviced by Peel or Motika.*/
select * from customers;
select * from customers
where snum in(select snum from salespeople where sname='peel' or sname='Monika');
/* 2001	Hoffman	London	100	1001
   2006	Clemens	London	100	1001*/
use cdac_practice;