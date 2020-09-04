USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist_first_name VARCHAR(50),
    author_last_name  VARCHAR(100) NOT NULL,
    album_name  VARCHAR(100) NOT NULL,
    release_date DATE,
    sales FLOAT,
    genre CHAR(50),
    PRIMARY KEY (id)
);

