--for this exercise I wasn't sure if we were supposed to do: SELECT 'random output' AS 'whateverYouWant'; - will refactor if necessary
USE codeup_test_db;
--SELECT column1, column2, ...
--FROM table_name
--WHERE column_name = 'value';
--SELECT * FROM quotes WHERE author_last_name = 'Adams';

--This is selecting all albums by name by the artist pink floyd
select name from albums where artist = 'Pink Floyd';

--this is showing the year Sgt. Pepper's Lonely Hearts Club Band was released
select release_date from albums where name = 'Sgt.Peppers Lonely Hearts Club Band';

--This is showing the genre for Nevermind
select genre from albums where name = 'Nevermind';

--This is showing which albums were released in the 1990s
select name from albums where release_date = 1990;

--This is showing which albums had less than 20 million certified sales
select name from albums where sales < 20;

--This is showing all the albums with a genre of "Rock".Why do these query results not include albums with a genre of "Hard rock" or "Progressive
-- rock"?
-- Because we are using the "=" not "contains" or whatever else. It has to match exactly what you type in.
select name from albums where genre = 'Rock';

