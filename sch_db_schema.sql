create table student_info
(
	SI_id int auto_increment,
	adm_no int not null,
	roll_no int not null,
	class varchar(20) not null,
	section varchar(20) not null,
	session varchar(20) not null,
	primary key(SI_id)
);
create table personal_info
(
	adm_no int not null,
	name varchar(40) not null,
	address varchar(255) not null,
	contact_no int,
	primary key(adm_no) 
);
create table sub_offered
(
	SO_id int auto_increment,
	SI_id int not null,
	sub_code varchar(20),
	primary key(SO_id)
);
create table exam_terms
(
	ET_id int auto_increment,
	SO_id int not null,
	term varchar(20) not null,
	primary key(ET_id)
);
create table class_sub
(
	class varchar(20) not null,
	sub_code varchar(20) not null
);
create table subjects
(
	sub_code varchar(20) not null,
	subject varchar(40) not null	
);
create table marks
(
	ET_id int not null,
	marks int not null
);