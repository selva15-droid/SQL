

use employee;

create table students_details(
RegNo int auto_increment primary key,
name varchar(20),
department varchar(10),
Mark int);

insert into studentS_details(name, department, Mark)
values('ABI', 'ECE', 300), ('SARAN', 'EEE', 400), ('SELVA', 'EEE', 400), ('DHANUSH', 'CSE', 480),
('HARI', 'EEE', 400), ('SABARI', 'CSE', 430), ('GV', 'IT', 450);

SELECT * FROM students_details;

select *, rank() over(partition by department order by mark desc) as Rank_Marks, dense_rank() over (partition by department order by mark desc)
as DenseRank_Marks from students_details;


create temporary table temp_table(
		id int,
        name varchar(20),
        contact bigint);

select * from temp_table;
