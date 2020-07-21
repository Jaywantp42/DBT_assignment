use cdac_practice_2;
show tables;
select * from s;

/*Display all the Supplier names with the initial letter capital*/
select concat(upper(substr(sname,1,1)),substr(sname,2)) from s;

/*Display all the Supplier names in upper case.*/
select upper(sname) from s;

/*Display all the Supplier names in lower case*/
select lower(sname) from s;

/*Display all the Supplier names padded to 25 characters, with spaces on the left*/
select lpad(sname,25,' ')from s;

/*Display all the Supplier names (with ‘la’ replaced by ‘ro’)*/
select replace(sname,'la','ro') from s;

/*Implement the above command such that ‘l’ is replaced with ‘r’ and ‘a’ is replaced with ‘o’*/
select replace(replace(sname,'l','r'),'a','o')from s;

/*Display the Supplier names and the lengths of the names*/
select sname,length(sname) from s;

/*Use the soundex function to search for a supplier by the name of ‘BLOKE'*/
select * from s where soundex(sname)=soundex('bloke');

/*Display the Supplier name and the status (as Ten, Twenty, Thirty, etc.)*/
select * from semp;
select empname, ifnull(deptno,0) as "Dept_No" from semp;

/*Display the current day (e.g. Thursday).*/
select sysdate() from dual;
select dayname('2020-07-21');