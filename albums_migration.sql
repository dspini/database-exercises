USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist_first_name VARCHAR(200),
    author_last_name  VARCHAR(200) NOT NULL,
    album_name  VARCHAR(150) NOT NULL,
    release_date DATE (4),
    sales FLOAT(9),
    genre VARCHAR(300),
    PRIMARY KEY (id)
);

