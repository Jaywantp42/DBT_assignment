use cdac_practice;
show tables;
/*Write a query that uses a subquery to obtain all orders for the customer named Cisneros.
 Assume you do not know his customer number (cnum).*/
 select * from orders;
 select onum "Order No", cnum "Cust No." from orders
 where cnum=(select cnum from customers where cname = 'cisneros');
 
 /*Write a query that produces the names and ratings of 
 all customers who have above-average orders.*/
 select cname "Name", Rating from customers
 where  cnum in(select cnum from orders where amount > (select avg(amount) from orders));
 
 /*Write a query that selects the total amount in orders for each salesperson for whom 
 this total is greater than the amount of the largest order in the table.*/
 select sum(amount) from orders group by snum having sum(amount) 
 > (select max(amount) from orders);