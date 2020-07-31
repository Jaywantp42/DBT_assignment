use cdac_practice;
/*Create a table called Cityorders. This will contain the same onum, amt and snum fields as the Orders table,
 and the same cnum and city fields as the Customers table,
 so that each customer’s order will be entered into this table along with his or her city.
 Onum will be the primary key of Cityorders. 
 All of the fields in Cityorders will be constrained to match the Customers and Orders tables.
 Assume the parent keys in these tables already have the proper constraints.*/
 create table cityorders
 as select onum,amount,snum,cnum,city from orders natural join customers;
 alter table cityorders add primary key(onum);
 alter table cityorders add foreign key (cnum) references customers(cnum);
 desc cityorders;
 
 /*Redefine the Orders table as follows:- add a new column called prev, which will identify,
 for each order, the onum of the previous order for that current customer.
 Implement this with a foreign key referring to the Orders table itself.
 The foreign key should refer as well to the cnum of the customer,
 providing a definite enforced link between the current order and the one referenced.*/
 create table if not exists
 orders2 ( 
	Onum int(4),
    Amount float(7,2),
    Odate date,
    Cnum int(4),
    Snum int(4),
    prev int(4),
    foreign key(prev) references cityorders(onum)
 );