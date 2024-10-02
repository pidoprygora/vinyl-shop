CREATE TABLE shipping_method (
    ship_id INT PRIMARY KEY AUTO_INCREMENT,
    ship_name VARCHAR(255) NOT NULL,
    cost VARCHAR(255),
    delivery_time date not null,
    delivery_status VARCHAR(255) NOT NULL
);

CREATE TABLE payment_method (
    pay_id INT PRIMARY KEY AUTO_INCREMENT,
    pay_name VARCHAR(255) NOT NULL,
    pay_description text,
    pay_status VARCHAR(255) NOT NULL
);

CREATE TABLE discount (
    discount_id INT PRIMARY KEY AUTO_INCREMENT,
    discount_code VARCHAR(255) NOT NULL,
    discount_value INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL
);

CREATE TABLE shopping_cart (
    cart_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    quantity INT NOT NULL,
    vinyl_id INT NOT NULL
);

ALTER TABLE shopping_cart
ADD CONSTRAINT FK_shopping_cart_user
FOREIGN KEY (user_id) REFERENCES users(user_id);

CREATE TABLE wishlist (
    wishlist_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    added_date date not null,
    vinyl_id INT NOT NULL
);

ALTER TABLE wishlist
ADD CONSTRAINT FK_wishlist_user
FOREIGN KEY (user_id) REFERENCES users(user_id);


CREATE TABLE reviews (
    review_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    review_date date not null,
    vinyl_id INT NOT NULL,
    rating int not null,
    review_comment text
);

ALTER TABLE reviews 
ADD CONSTRAINT FK_reviews_user
FOREIGN KEY (user_id) REFERENCES users(user_id);

ALTER TABLE reviews 
ADD CONSTRAINT FK_reviews_vinyl
FOREIGN KEY (vinyl_id) REFERENCES vinyls(vinyl_id);

create table order_items (
order_item_id INT PRIMARY KEY AUTO_INCREMENT,
order_id int not null,
vinyl_id INT NOT NULL,
quantity INT NOT NULL
);

ALTER TABLE order_items
ADD CONSTRAINT FK_order_items_vinyl
FOREIGN KEY (vinyl_id) REFERENCES vinyls(vinyl_id);

ALTER TABLE order_items
ADD CONSTRAINT FK_order_items_orders
FOREIGN KEY (order_id) REFERENCES orders(order_id);

create table orders (
order_id INT PRIMARY KEY AUTO_INCREMENT,
user_id INT NOT NULL,
order_date DATE NOT NULL,
order_status varchar(255),
total_sum int not null);

ALTER TABLE orders
ADD CONSTRAINT FK_orders_user
FOREIGN KEY (user_id) REFERENCES users(user_id);

create table vinyls (
vinyl_id INT PRIMARY KEY AUTO_INCREMENT,
title varchar(255) not null,
category_id int not null,
artist_id int not null,
genre_id int not null,
tag_id int not null,
label_id int not null,
release_year year not null,
vinyl_description text,
price int not null,
is_in_stock int,
cover_img varchar(255)
);

ALTER TABLE vinyls 
ADD CONSTRAINT FK_vinyls_categories
FOREIGN KEY (category_id) REFERENCES categories(category_id);

ALTER TABLE vinyls 
ADD CONSTRAINT FK_vinyls_artists
FOREIGN KEY (artist_id) REFERENCES artists(artist_id);

ALTER TABLE vinyls 
ADD CONSTRAINT FK_vinyls_genres
FOREIGN KEY (genre_id) REFERENCES genres(genre_id);

ALTER TABLE vinyls 
ADD CONSTRAINT FK_vinyls_tags
FOREIGN KEY (tag_id) REFERENCES tags(tag_id);

ALTER TABLE vinyls 
ADD CONSTRAINT FK_vinyls_labels
FOREIGN KEY (label_id) REFERENCES labels(label_id);

create table categories (
category_id INT PRIMARY KEY AUTO_INCREMENT,
category_name varchar(255)  not null,
category_description text);

create table artists (
artist_id INT PRIMARY KEY AUTO_INCREMENT,
artist_name varchar(255)  not null,
biography text,
artist_img varchar(255) );

create table genres (
genre_id INT PRIMARY KEY AUTO_INCREMENT,
genre_name varchar(255)  not null);

create table tags (
tag_id INT PRIMARY KEY AUTO_INCREMENT,
tag_name varchar(255)  not null);

create table labels (
label_id INT PRIMARY KEY AUTO_INCREMENT,
label_name varchar(255)  not null,
label_description text,
label_img varchar(255) );
