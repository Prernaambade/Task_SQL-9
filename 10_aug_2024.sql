college_library(student_id,name,book_title,mob_no,borrow_date,return_date,dyas)

create table college_library(
	student_id varchar(50)primary key,
	student_name varchar(150),
	book_title varchar(150),
	mon_no int,
	borrow_date date,
	return_date date,
	days int
)
	
select * from college_library

insert into college_library values('AP-11125','PRERNA','Mathematical_physics',125486385,'2024-05-21','2024-05-26',5)
copy college_library from 'D:\SQL Practice\10_aug_2024.csv' DELIMITER ','csv header

--regex
	
1. select * from college_library where student_id ~* '^A[a-z]-1[0-9]{4}$'
--AP-11125,AP-11126

2. select * from college_library where student_id ~* '^[a-z]{2}-2[0-9]{3}(1|5|9)$'
--CD-24969,YZ-24935

3. select * from college_library where student_id ~* '^[a-z]{2}-[0-9]{4}(6|9)$'
--AP-11126,BC-12469,CD-24969,QR-35496,ST-45459,UV-12486

4. select * from college_library where student_id ~* '^[a-z]G-[0-9]{3}(5|6)(8|4)$'
--FG-38858

5. select * from college_library where student_id ~* '^[a-z]{2}-[0-9]{5}$'
--All data

6.select * from college_library where student_id ~* 'OP-[0-9]{5}'
--OP-31975