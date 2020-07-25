use cdac_practice;

select * from customers;
select * from orders;
select * from salespeople;
/*Write a query that selects all customers whose ratings are
 equal to or greater than ANY of Serres’.*/
 select * from customers where rating >= any
	(select rating from customers where snum in
		(select snum from salespeople where sname = 'serres'));
        
/*Write a query using ANY or ALL that will find all salespeople who 
have no customers located in their city.*/
select * from salespeople where (snum,city) != all
	(select snum,city from customers) order by snum;
    
/*Write a query that selects all orders for amounts 
greater than any for the customers in London.*/
 select * from orders where amount > any
 (select amount from orders where cnum in
	(select cnum from customers where city = 'london'));

/*Write the above query using MIN or MAX*/
select * from orders where amount >
	(select min(amount) from customers join orders where city = 'london');
select * from orders where amount > (select max(amount) from orders, customers where orders.cnum=customers.cnum and city='london');    