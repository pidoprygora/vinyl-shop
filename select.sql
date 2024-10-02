select * from artists;

select * from genres;

select * from tags;

select * from labels;

select * from users;

select * from reviews;

select * from vinyls;


ALTER TABLE vinyls 
MODIFY COLUMN vinyl_description TEXT NULL,
MODIFY COLUMN category_id INT NULL,
MODIFY COLUMN tag_id INT NULL;
