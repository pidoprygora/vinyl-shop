INSERT INTO artists (artist_name, biography, artist_img)
VALUES 
('Billie Eilish', 'Billie Eilish is an American singer-songwriter who gained popularity for her distinctive sound and style, blending pop, indie, and electronic music.', 'billie_eilish.jpg'),
('Dua Lipa', 'Dua Lipa is a British singer-songwriter known for her dance-pop hits and powerful vocal performances, with several chart-topping singles worldwide.', 'dua_lipa.jpg'),
('The Weeknd', 'The Weeknd, born Abel Tesfaye, is a Canadian singer-songwriter and producer known for his atmospheric, dark R&B sound and hits like "Blinding Lights".', 'the_weeknd.jpg'),
('Måneskin', 'Måneskin is an Italian rock band that gained international recognition after winning the Eurovision Song Contest 2021 with their song "Zitti e buoni". They blend rock, glam, and funk elements in their music.', 'maneskin.jpg'),
('Coldplay', 'Coldplay is a British rock band formed in London in 1996, known for their atmospheric pop and rock sound, with hits like "Yellow", "Fix You", and "Viva la Vida".', 'coldplay.jpg'),
('Rammstein', 'Rammstein is a German industrial metal band formed in Berlin in 1994. They are known for their heavy sound, dramatic live performances, and controversial lyrics.', 'rammstein.jpg'),
('Okean Elzy', 'Okean Elzy is one of the most popular Ukrainian rock bands, formed in 1994. Their music is known for its lyrical depth and powerful performances.', 'okean_elzy.jpg'),
('alyona alyona', 'alyona alyona is a Ukrainian rapper, known for her socially conscious lyrics and unique style. She quickly gained popularity with her debut album.', 'alyona_alyona.jpg'),
('KALUSH', 'KALUSH is a Ukrainian hip-hop group known for their fusion of rap and traditional Ukrainian folk elements. They gained international attention with their song "Stefania".', 'kalush.jpg'),
('Jamala', 'Jamala is a Ukrainian singer and songwriter who won the Eurovision Song Contest 2016 with her song "1944". Her music blends elements of jazz, soul, and folk.', 'jamala.jpg'),
('BTS', 'BTS, also known as Bangtan Sonyeondan, is a South Korean boy band that has achieved global fame with their powerful performances and socially conscious lyrics. They are known for their genre-blending music and dedicated fanbase.', 'bts.jpg');

select * from artists;

INSERT INTO labels (label_name, label_description, label_img)
VALUES 
('Universal Music Group', 'Universal Music Group is one of the largest music corporations in the world, representing a diverse roster of artists across various genres.', 'universal_music_group.jpg'),
('Sony Music', 'Sony Music is a global music company with a rich history of signing and promoting artists across multiple genres, including pop, rock, and classical.', 'sony_music.jpg'),
('Warner Music Group', 'Warner Music Group is an influential global music company known for its extensive catalog and successful artists in various music genres.', 'warner_music_group.jpg'),
('Atlantic Records', 'Atlantic Records is a major American record label, known for its roster of successful artists in pop, rock, and hip-hop.', 'atlantic_records.jpg'),
('Def Jam Recordings', 'Def Jam Recordings is an influential American record label specializing in hip-hop and urban music, with a notable roster of pioneering artists.', 'def_jam_recordings.jpg');


INSERT INTO tags (tag_name)
VALUES 
('New Release'),
('Hit'),
('Trending'),
('Top Chart'),
('Recommended'),
('Exclusive'),
('Upcoming');

INSERT INTO genres (genre_name)
VALUES 
('Rock'),
('Pop'),
('Jazz'),
('Hip-Hop'),
('Electronic'),
('Classical'),
('Indie'),
('Folk'),
('Metal');

INSERT INTO categories (category_name, category_description)
VALUES 
('New Arrivals', 'A category for newly arrived vinyl records. Discover the latest releases and additions to our collection.'),
('Classic Vinyl', 'A category dedicated to classic vinyl records, including timeless albums from various genres.'),
('Limited Editions', 'A category for limited edition vinyl releases, including special pressings and exclusive variants.'),
('Collector\'s Vinyl', 'A category for rare and collectible vinyl records that are sought after by music enthusiasts and collectors.'),
('Vinyl Box Sets', 'A category for box sets that include multiple vinyl records, often featuring complete albums or special collections.');

INSERT INTO shipping_method (ship_name, cost, delivery_time, delivery_status)
VALUES 
('Standard Shipping', 5.99, '5-7 business days', 'Available'),
('Express Shipping', 12.99, '2-3 business days', 'Available'),
('Overnight Shipping', 24.99, '1 business day', 'Available'),
('International Shipping', 19.99, '7-14 business days', 'Available'),
('Economy Shipping', 3.99, '7-10 business days', 'Available');

INSERT INTO payment_method (pay_name, pay_description, pay_status)
VALUES 
('Credit Card', 'A method of payment using a credit card, allowing secure online transactions and convenient payment options.', 'Available'),
('PayPal', 'A popular online payment system that allows users to make payments and money transfers securely over the internet.', 'Available'),
('Bank Transfer', 'A payment method where funds are transferred directly from one bank account to another.', 'Available'),
('Cash on Delivery', 'A payment method where payment is made in cash upon delivery of the product.', 'Available');

ALTER TABLE shipping_method
MODIFY COLUMN delivery_time VARCHAR(255);

INSERT INTO discounts (discount_code, discount_value, start_date, end_date)
VALUES 
('WELCOME10', 10, '2024-09-01', '2024-09-30'),
('SUMMER20', 20, '2024-06-01', '2024-08-31'),
('FESTIVAL15', 15, '2024-10-01', '2024-10-31'),
('BLACKFRIDAY25', 25, '2024-11-24', '2024-11-30'),
('XMAS30', 30, '2024-12-01', '2024-12-25');

INSERT INTO Users (username, email, user_password)
VALUES 
('david_white', 'david.white@example.com', '3r32rffd'),
('sarah_green', 'sarah.green@example.com', 'bfbhrshfdc'),
('luke_wilson', 'luke.wilson@example.com', 'kkdspi4ng9'),
('olivia_brown', 'olivia.brown@example.com', '93jclllejgf'),
('daniel_thompson', 'daniel.thompson@example.com', '9302094958'),
('lucas_martin', 'lucas.martin@example.com', '28392388nj'),
('sophia_davis', 'sophia.davis@example.com', 'jfiiifjjjfi'),
('emma_clarkson', 'emma.clarkson@example.com', 'ksfodonfck'),
('jackson_miller', 'jackson.miller@example.com', 'nsjfjjfjjn'),
('amelia_harris', 'amelia.harris@example.com', 'akngkv;sk');

INSERT INTO vinyls (title, category_id, artist_id, genre_id, tag_id, label_id, release_year, vinyl_description, price, is_in_stock, cover_img)
VALUES 
('Happier Than Ever', 1, 1, 2, 1, 1, 2021, 'Billie Eilish\'s second studio album, featuring a mix of indie pop and alternative rock with emotionally resonant lyrics.', 30, 50, 'happier_than_ever.jpg'),
('Future Nostalgia', null, 2, 2, 2, 2, 2020, 'Dua Lipa\'s critically acclaimed dance-pop album, packed with chart-topping hits.', 28, 75, 'future_nostalgia.jpg'),
('After Hours', null, 3, 2, 4, 4, 2020, 'The Weeknd\'s fourth studio album, blending dark R&B and pop with a cinematic, atmospheric sound.', 32, 60, 'after_hours.jpg'),
('Teatro d\'ira - Vol. I', 3, 4, 1, 6, 2, 2021, 'Måneskin\'s energetic rock album, released after their Eurovision win, featuring glam rock and punk influences.', 29, 40, 'teatro_dira_vol_I.jpg'),
('Everyday Life', null, 5, 2, null, 1, 2019, 'Coldplay\'s double album exploring diverse musical styles and themes of human connection and hope.', 35, 100, 'everyday_life.jpg'),
('Zeit', 3, 6, 9, 6, 1, 2022, 'Rammstein\'s latest album featuring their signature industrial metal sound and powerful performances.', 40, 50, 'zeit.jpg'),
('Bez Mezh', null, 7, 1, null, 2, 2016, 'Okean Elzy\'s 9th studio album, known for its emotional depth and powerful lyrics.', 25, 30, 'bez_mezh.jpg'),
('Pushka', null, 8, 4, null, 3, 2019, 'alyona alyona\'s debut album, featuring socially conscious rap and unique Ukrainian style.', 20, 20, 'pushka.jpg'),
('Stefania', null, 9, 8, 2, 1, 2022, 'KALUSH\'s fusion of hip-hop and Ukrainian folk, featuring their Eurovision-winning song "Stefania".', 30, 60, 'stefania.jpg'),
('1944', null, 10, 8, 6, 1, 2016, 'Jamala\'s Eurovision-winning album, blending elements of folk, jazz, and soul.', 22, 40, '1944.jpg'),
('Map of the Soul: 7', null, 11, 2, null, 1, 2020, 'BTS\'s genre-blending album, exploring themes of personal and artistic growth.', 35, 80, 'map_of_the_soul_7.jpg');

INSERT INTO vinyls (title, category_id, artist_id, genre_id, tag_id, label_id, release_year, vinyl_description, price, is_in_stock, cover_img)
VALUES
('When We All Fall Asleep, Where Do We Go?', null, 1, 2, 1, 1, 2019, 'Billie Eilish\'s debut album, featuring a mix of dark pop and electronic influences.', 33, 60, 'when_we_all_fall_asleep.jpg'),
('Don\'t Start Now', 1, 2, 2, 2, 2, 2020, 'Dua Lipa\'s hit single from "Future Nostalgia", known for its upbeat dance-pop sound.', 12, 120, 'dont_start_now.jpg'),
('Starboy', null, 3, 2, 4, 4, 2016, 'The Weeknd\'s album blending pop and R&B, known for hits like "Starboy" and "I Feel It Coming".', 30, 55, 'starboy.jpg'),
('Rush!', 5, 4, 1, 6, 2, 2023, 'Måneskin\'s follow-up album featuring high-energy rock and glam influences.', 31, 45, 'rush.jpg'),
('A Head Full of Dreams', null, 5, 7, null, 1, 2015, 'Coldplay\'s album blending alternative rock with uplifting themes and melodies.', 33, 70, 'a_head_full_of_dreams.jpg'),
('Sehnsucht', 3, 6, 9, 6, 1, 1997, 'Rammstein\'s breakthrough album featuring their signature industrial metal sound.', 35, 40, 'sehnsucht.jpg'),
('Kino', null, 7, 1, null, 2, 2021, 'Okean Elzy\'s album blending rock with poetic lyrics.', 27, 35, 'kino.jpg'),
('Slam', null, 8, 4, null, 3, 2020, 'alyona alyona\'s sophomore album featuring more socially conscious rap.', 22, 25, 'slam.jpg'),
('Gass', null, 9, 4, 2, 1, 2021, 'KALUSH\'s album featuring a mix of hip-hop and traditional Ukrainian sounds.', 28, 55, 'gass.jpg'),
('The Same', null, 10, 8, 6, 1, 2018, 'Jamala\'s album blending elements of jazz and soul with personal themes.', 24, 35, 'the_same.jpg'),
('Love Yourself: Answer', 5, 11, 2, null, 1, 2018, 'BTS\'s album featuring a mix of pop, hip-hop, and R&B, with themes of self-love and growth.', 32, 75, 'love_yourself_answer.jpg');

select * from tags;

select * from artists;
select * from genres;
select * from labels;
select * from categories;

INSERT INTO wishlist (user_id, added_date, vinyl_id)
VALUES
(1, '2024-07-06', 1), 
(1, '2024-09-10', 4), 
(1, '2023-12-27', 6), 

(2, '2023-06-12', 7), 
(2, '2024-09-02', 10), 

(3, '2024-02-15', 5), 
(3, '2024-05-19', 11), 

(4, '2024-01-18', 9), 
(4, '2024-08-18', 24); 

INSERT INTO reviews (user_id, review_date, vinyl_id, rating, review_comment)
VALUES
(1, '2024-09-10', 1, 5, 'An amazing album with emotional depth and powerful lyrics. Billie Eilish truly delivers with this one.'),
(5, '2024-09-13', 4, 4, 'Måneskin’s energy is contagious. Great rock album with a fresh twist.'),
(3, '2024-06-05', 6, 4, 'Rammstein’s latest is intense and thrilling. The sound is as heavy and dramatic as ever.'),
(9, '2024-03-12', 2, 5, 'Future Nostalgia is a dance-pop masterpiece. Every track is a potential hit!'),
(7, '2024-02-24', 7, 3, 'Okean Elzy’s “Bez Mezh” has a few great tracks, but some feel a bit repetitive.'),
(4, '2024-05-09', 10, 4, 'Jamala’s “1944” is both haunting and beautiful. A powerful mix of folk and soul.'),
(8, '2024-03-31', 3, 5, 'The Weeknd’s “After Hours” is a brilliant blend of dark R&B and pop. It’s a sonic journey.'),
(3, '2024-04-16', 5, 4, 'Coldplay’s “Everyday Life” is a lovely, reflective album. Not their best, but still very good.'),
(7, '2024-06-30', 8, 4, 'alyona alyona’s “Pushka” is a breath of fresh air in the rap scene. Bold and socially conscious.'),
(6, '2024-09-13', 9, 4, 'KALUSH’s “Stefania” is an exciting fusion of hip-hop and Ukrainian folk. A must-listen for fans of both genres.'),
(8, '2024-08-03', 12, 5, 'A new release that exceeded expectations. Exciting and innovative!'),
(4, '2024-08-24', 13, 3, 'A classic folk album with some timeless tracks, but a bit outdated in style.'),
(10, '2024-05-21', 14, 5, 'Another fantastic new release. Fresh and compelling music that stands out in the current scene.');

INSERT INTO orders (user_id, order_date, order_status, total_sum)
VALUES 
(1, '2024-09-12', 'pending', 120),
(2, '2024-09-10', 'shipped', 75),
(3, '2024-09-09', 'delivered', 200),
(1, '2024-09-11', 'canceled', 50),
(4, '2024-09-08', 'delivered', 150);

INSERT INTO order_items (order_id, vinyl_id, quantity)
VALUES 
(1, 2, 1),
(1, 3, 2),
(2, 5, 1),
(3, 1, 3), 
(4, 4, 1), 
(5, 6, 1); 






