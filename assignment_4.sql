show databases;
use cdac_practice;
show tables;
select * from customers;
select * from orders;

/*Write a select command that produces the order number, amount, and date for all rows in the Orders table.*/
select onum as"Order number",amount,odate "Order date" from orders;
select * from customers;
/*Write a query that produces all rows from the Customers table for which the salesperson’s number is 1001.*/
select * from customers where snum=1001;
select * from salesperson;
show tables;
select * from salespeople;
/*Write a query that displays the Salespeople table with the columns in the following order: city, sname, snum, comm.*/
select city,sname,snum,comm from salespeople;
select * from customers;
/*Write a select command that produces the rating followed by the name of each customer in San Jose*/
select Rating, cname "Customer Name" from customers where city='san jose';
select * from orders;
/*Write a query that will produce the snum values of all salespeople (suppress the duplicates) with orders in the Orders table.*/
select distinct snum from orders;