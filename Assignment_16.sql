/*Write a command that will enable a user to pull orders grouped by date out of the Orders table quickly.*/
select * from orders;
create index i_orders on orders(odate);

/*If the Orders table has already been created, how can you force the 
onum field to be unique (assume all current values are unique)?*/
alter table orders add constraint pk_onum primary key(onum);
desc orders;

/*Create an index that would permit each salesperson to retrieve his or her orders grouped by date quickly*/
create index i_date on orders(odate);

/*Let us assume that each salesperson is to have only one customer of a given rating, and that 
this is currently the case. Enter a command that enforces it.*/
select * from customers;
alter table customers add constraint pk_cnum primary key(cnum);
desc customers;  