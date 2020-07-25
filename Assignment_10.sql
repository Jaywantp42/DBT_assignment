/*Write a query that produces the names and cities of all customers with the same rating as Hoffman*/
select cname as "Customer Name", City from customers
where rating = (select rating from customers where cname = 'Hoffman');

/*Write a query that produces all pairs of salespeople who are living in the same city. Exclude combinations of salespeople with themselves as well as duplicate rows with the order reversed*/
select * from salespeople;
select m.sname, n.sname, m.city from salespeople m, salespeople n
where m.city=n.city and m.sname<n.sname;