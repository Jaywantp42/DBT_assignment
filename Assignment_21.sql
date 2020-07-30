use cdac_practice;
/*Give Amit the right to change the ratings of the customers.*/
grant update on customers to amit;

/*Give Manoj the right to give other users the right to query the Orders table.*/
grant select on orders to manoj with grant option;

/*Take the INSERT privilege on Salespeople away from Ajita.*/
revoke insert on salespeople from ajita;

/*Grant Abhijeet the right to insert or update the Customers table while keeping her
possible rating values in the range of 100 to 500.*/
create view rating as
select * from customers where rating >100 and rating <= 500;
 grant update,insert on rating to abhijeet;
 
 /*Allow Vikram to query the Customers table, but restrict his access to those
customers whose rating is the lowest.*/
create view cust_access as
select * from customers where rating= (select min(rating) from customers);
grant select on cust_access to vikram;