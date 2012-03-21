drop table if exists testing_table;
create table testing_table 
(
name	varchar(20), 
contact_name 	varchar(20), 
roll_no 	varchar(20)
);
show columns from testing_table;
alter table testing_table drop name;
show columns from testing_table;
alter table testing_table change contact_name username varchar(20);
show columns from testing_table;
alter table testing_table add first_name varchar(20) first;
alter table testing_table add last_name varchar(20) after first_name;
show columns from testing_table;
alter table testing_table modify roll_no int;
show columns from testing_table;
