use cdac_practice;
/*Write a query that lists each order number followed by the name of the customer who made the order*/
select orders.onum "Orders", customers.cname "customers" from orders, customers
where orders.cnum = customers.cnum;

/*Write a query that gives the names of both the salesperson and the customer for each order along with the order number*/
select orders.onum "Orders", salespeople.sname "Salespeople", customers.cname "Customers" from orders, salespeople, customers
where orders.snum = salespeople.snum and orders.cnum = customers.cnum;

/*Write a query that produces all customers serviced by salespeople with a commission above 12%. Output the customer’s name, the salesperson’s name, and the salesperson’s rate of commission*/
select customers.cname, salespeople.sname, salespeople.comm*100 from customers, salespeople
where customers.snum = salespeople.snum and comm > .12;

/*Write a query that calculates the amount of the salesperson’s commission on each order by a customer with a rating above 100*/
select * from salespeople;
select orders.amount, salespeople.comm from orders, salespeople, customers
where rating >100 and orders.snum = salespeople.snum;