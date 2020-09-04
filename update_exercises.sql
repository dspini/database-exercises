USE codeup_test_db;

-- Select all albums in your table
SELECT `name` FROM albums;

-- Select all albums released before 1980
SELECT `name` FROM albums WHERE release_date < 1980;

-- Select all albums by Michael Jackson
SELECT `name` FROM albums WHERE artist = 'Michael Jackson';

-- Make all the albums 10 times more popular
UPDATE albums SET sales = sales * 10;

SELECT `name`, sales FROM albums;

-- Move all the albums before 1980 back to the 1800s
UPDATE albums SET release_date = release_date - 100 WHERE release_date < 1980;

-- Change "Michael Jackson" to "Peter Jackson"
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';

SELECT * FROM albums;