USE codeup_test_db;

show tables;

drop table if exists albums;

create table albums(id int unsigned not null auto_increment, artist varchar(50), name varchar(50), release_date int, sales float, genre varchar(50),PRIMARY KEY(id));



