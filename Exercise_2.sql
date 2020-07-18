use cdac_practice_2;
show tables;

/*Display the Supplier table in the descending order of CITY*/
select * from s;
select * from s
order by city desc;
/*0001	Sunil	6000.00	10	NULL
0002	Hiren	8000.00	20	NULL
0003	Ali		4000.00	10	0001*/

/*Display all the Suppliers with a status between 10 and 20*/
select * from semp;
select * from semp
where deptno between 10 and 20;
/*0001	Sunil	6000.00	10	NULL
0002	Hiren	8000.00	20	NULL
0003	Ali		4000.00	10	0001*/

/*Display all the Parts and their Weight, which are not in the range of 10 and 15.*/
select * from p;
select * from p 
where weight not in(10,15);
/*100	Guitar	Brown	2.20	London
101		Violin	Brown	1.75	Bristol
102		Cello	Red		3.45	Westminster
104		Sitar	yello	6.20	London*/

/*Display all the Part names starting with the letter ‘S’.*/
select pname "Partname" from p
where pname like 'S%';
/*Sitar*/

/*Display all the Suppliers, belonging to cities starting with the letter ‘L’.*/
select * from s
where city like 'L%';
/*1	Pandurang	UK	London
  4	Atmaram		UK	London
  3	Tukaram		UK	Leeds
  4	Atmaram		UK	London*/
  
  /*Display all the Projects, with the third letter in JNAME as ‘n’.*/
  select * from p
  where pname like '__n%';
  
  /*Display the Part Table in the ascending order of CITY and within the city in the ascending order of Part names*/
  select pname "Part Name", city from p
  order by city;
  /*Violin	Bristol
	Guitar	London
	Sitar	London
	Cello	Westminster*/