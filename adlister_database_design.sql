USE adlister_database_design;

SHOW TABLES;

# USER SIGN UP ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
CREATE TABLE user_sign_up (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_email VARCHAR(100) NOT NULL,
    user_password VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO user_sign_up (user_email, user_password) VALUES ();

SELECT * FROM user_sign_up;


# CREATE USER ID ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
CREATE TABLE create_user_ID (
    user_first_name VARCHAR(100) NOT NULL ,
    user_last_name  VARCHAR(100) NOT NULL,
    user_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (user_id),
    FOREIGN KEY (user_id) REFERENCES user_sign_up (id)
);

INSERT INTO create_user_ID (user_first_name, user_last_name) VALUES ();

SELECT * FROM create_user_ID;


# CREATE TITLE ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
CREATE TABLE title (
    title  VARCHAR(100) NOT NULL,
    content TEXT NOT NULL
);

INSERT INTO title (title, content) VALUES ();

SELECT user() AS create_user_id
FROM create_user_ID
RIGHT JOIN title ON title = title.content;

SELECT * FROM title;


# CREATE CATEGORY ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
CREATE TABLE category (
    help_wanted TEXT(250) NOT NULL,
    giveaway FLOAT(10) NOT NULL,
    furniture TEXT (250) NOT NULL
);

INSERT INTO category (help_wanted, giveaway, furniture) VALUES ();

SELECT user() AS create_user_id
FROM create_user_ID
RIGHT JOIN category ON category.help_wanted = category.giveaway = category.furniture;

SELECT * FROM category;


# DESCRIPTION OF ITEM ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
CREATE TABLE description_of_item (
    item VARCHAR(100) NOT NULL,
    item_number INT(4) NOT NULL,
    item_price FLOAT(10)
);

INSERT INTO description_of_item (item, item_number, item_price) VALUES ();

SELECT user() AS category
FROM create_user_ID
RIGHT JOIN description_of_item ON description_of_item.item = description_of_item.item_number = description_of_item.item_price;

SELECT * FROM description_of_item;


# CREATE_USER ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
CREATE USER 'user1'@'localhost' IDENTIFIED BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE ON adlister_database_design TO 'user1'@'localhost';
SHOW GRANTS for 'user1'@'localhost';