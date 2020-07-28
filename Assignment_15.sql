use cdac_practice;

/*Assume there is a table called Multicust, with all of the same column definitions as Salespeople. 
 Write a command that inserts all salespeople with more than one customer into this table.*/
 select * from customers;
 create table multicast as select * from salespeople where snum in
 (select snum from customers group by snum having count(snum) > 1);
 select * from multicast;
 
 /*Write a command that deletes all customers with no current orders.*/
 select * from orders;
 delete from customers where cnum= any(select cnum from orders where cnum not in(select cnum from orders));
 select * from customers;
 
 /*Write a command that increases by twenty percent the commissions of all 
  salespeople with total orders above Rs. 3,000.*/
  select * from orders;
  update salespeople set comm=comm*1.20 where snum in (select snum from orders where amount > 3000);
 