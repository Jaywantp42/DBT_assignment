/*Write a command that puts the following values, in their given order, into the salespeople table:
 city – San Jose, name – Blanco, comm – NULL, cnum – 1100.*/
 insert into salespeople(city,sname,comm,snum)
 values ('San Jose','Blanco',Null,1100);
 select * from salespeople;
 
 /*Write a command that removes all orders from customer Clemens from the Orders table.*/
 select * from orders;
 delete from orders where cnum in(select cnum from customers where cname = 'clemens');
 
 /*Write a command that increases the rating of all customers in Rome by 100*/
 update customers set rating = rating+100 where city='Rome';
 select * from customers;
 
 /*Salesperson Serres has left the company. Assign her customers to Motika.*/
 select * from customers;
 update customers set snum = (select snum from salespeople where sname='motika') 
	where snum = (select snum from salespeople where sname='serres');
    select * from customers;