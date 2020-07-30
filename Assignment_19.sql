/*Create a view that shows all of the customers who have the highest ratings.*/
select * from customers;
create view cust_rating as
select * from customers where rating = (select max(rating) from customers);
select * from cust_rating;

/*Create a view that shows the number of salespeople in each city.*/
select * from salespeople;
create view s_ppl as select City, count(snum) as "No. of salespeople" from salespeople
group by city;
select * from s_ppl;

/*Create a view that shows the average 
and total orders for each salesperson after his or her name. Assume all names are unique.*/
select * from orders;
create view avd_od_sppl as
select sname, round(avg(onum),2), count(onum) as "Total Orders" from orders inner join salespeople on 
orders.snum = salespeople.snum group by salespeople.snum;
select * from avd_od_sppl;

/*Create a view that shows each salesperson with multiple customers.*/
create view sppl_cust as
select sname as salesperson,cname as customer from salespeople join customers;
select * from sppl_cust;   