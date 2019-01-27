USE codeup_test_db;
--showing all albums released after 1991
delete name from albums where release_date >= 1991;

--showing albums with the genre "disco"
delete name from albums where genre = 'Disco';

--showing all albums by "The Beatles"
delete name from albums where artist = 'The Beatles';