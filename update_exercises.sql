use codeup_test_db;

-- UPDATE table_name
-- SET column1 = 'value1', column2 = 'value2'
-- WHERE columnA = 'valueA';

-- This is showing all albums in the table
select * from albums;

-- This is showing all albums that were released before 1990
select name from albums where release_date <= 1990;

--This is showing all albums by Michael Jackson
select name from albums where artist = 'Michael Jackson';

--this is making all the albums 10 times more popular (sales * 10) and showing all the albums after that.
update albums set sales = sales*10 where sales;
select * from albums;

-- Move all the albums before 1980 back to the 1800s and showing all the albums after that; - this one just changes it to 1880 and not
-- to whatever the date was before i.e 1979 changes to 1880 instead of 1879;
update albums set release_date = 1880 where release_date < 1980;
select * from albums;

--This is changing 'Michael Jackson' to 'Peter Jackson'
update albums set artist = 'Peter Jackson' where artist = 'Michael Jackson';
select * from albums;



