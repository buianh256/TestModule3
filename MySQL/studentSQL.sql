create database module3;
use module3;
create table student(
id int primary key auto_increment,
name varchar(255),
dateOfBirth date,
email varchar(255),
address varchar(255),
phone varchar(255),
classroom_id int,
foreign key (classroom_id) references classroom(id)
);
create table classroom(
id int primary key auto_increment,
classroom varchar(255) unique
); 
insert into student(name, dateOfBirth,email,address,phone,classroom_id)
values("Nguyen Van A","1995-01-15","nguyenvana@gmail.com","Ha Noi","0987654321",1),
("Nguyen Van B","1997-11-22","nguyenvanb@gmail.com","Ninh Binh","0987654321",1),
("Nguyen Van C","1997-02-20","nguyenvanc@gmail.com","Vinh Phuc","0987654321",2),
("Nguyen Van D","1998-09-09","nguyenvand@gmail.com","Ha Noi","0987654321",3),
("Nguyen Van E","1996-01-30","nguyenvane@gmail.com","Quang Ninh","0987654321",3);

insert into classroom(classroom)
values("C0823H1"),
("C0723H1"),
("C0623H1");