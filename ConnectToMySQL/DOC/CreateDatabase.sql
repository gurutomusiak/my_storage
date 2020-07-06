create database testconnect;
use testconnect;
create table component(id int(2),name varchar(50));
insert into component (id,name) values	
						(1,"SQLConnection"),
						(2,"SQLQuery"),
						(3,"DataSetProvider"),
						(4,"ClientDataSet"),
						(5,"DataSource");