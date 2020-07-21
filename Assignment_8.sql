/*Assume each salesperson has a 12% commission. Write a query on the orders table that will produce the order number, the salesperson number, and the amount of the salesperson’s commission for that order*/
select onum "Oreder No.", snum "Salesperson no", amount * 0.12 "Commision" from orders;

/*Write a query on the Customers table that will find the highest rating in each city. Put the output in this form:*/
select cname "For the city",max(rating) "Highest rating is:" from customers;

/*Write a query that lists customers in descending order of rating. Output the rating field first, followed by the customer’s name and number.*/
select Rating, cname "customer name", cnum "Customer No" from customers
order by rating desc;

/*Write a query that totals the orders for each day and places the results in descending order.*/
select count(odate) "Total orders", Odate "Date" from orders
group by odate order by odate desc;
select * from orders;