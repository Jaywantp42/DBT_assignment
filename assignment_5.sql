show databases;
use cdac_pracrice;

/*Write a query that will give you all orders for more than Rs. 1,000*/
select * from orders;
select * from orders where amount > 1000;

/*Write a query that will give you the names and cities of all salespeople in London with a commission above .10.*/
select * from salespeople;
select sname "Name",City from salespeople where city='London' and comm > .10;

/*What will be the output from the following query?*/
select * from orders;
Select * from Orders
where (amount < 1000 OR
NOT (odate = '1990-10-03'
AND cnum > 2003));
/*ANS: Display all tauple from order except date is 03-oct 1990 with cnum >2003 or orders
where amt is less then 1000 or Display all order having amount less then 1000 or having order except on 03-oct-1990
with cnum>2003.*/

/*Write a query on the Customers table whose output will exclude all customers with a rating <= 100, unless they are located in Rome*/
select * from customers;
select * from customers where rating > 100 or city='rome';

/*What will be the output of the following query?*/
Select * from Orders
where NOT ((odate = '1990-10-03' OR snum
>1006) AND amount >= 1500);
/*ANS: Orders whise orderdate: 1990-10-03 and amount > 1500 will not displayed*/

/*What is a simpler way to write this query?*/
select * from salespeople;
select snum,sname,city,comm from salespeople where comm = .13; 