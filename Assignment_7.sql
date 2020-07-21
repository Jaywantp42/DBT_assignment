use cdac_practice;
select * from orders;
/*Write a query that counts all orders for October 3*/
select count(onum) "Order count" from orders
where odate= '1990-10-03';

/*Write a query that counts the number of different non-NULL city values in the Customers table*/
select count(city) "city" from customers
where cname is not null;

/*Write a query that selects each customer’s smallest order*/
select Onum "Order No.", min(amount) "Amount" from orders
group by cnum;

/*Write a query that selects the first customer, in alphabetical order, whose name begins with G.*/
select cname "Customer" from customers
where cname like 'G%' order by cname;

/*Write a query that selects the highest rating in each city.*/
select max(rating) "Rating" from customers
group by city;

/*Write a query that counts the number of salespeople registering orders for each day. (If a salesperson has more than one order on a given day, he or she should be counted only once.).*/
select count(odate) "Order register", odate "Date" from orders
group by odate; 