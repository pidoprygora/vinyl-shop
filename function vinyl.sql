DELIMITER //
CREATE FUNCTION get_order_total(order_id INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;
    SELECT SUM(oi.quantity * v.price) INTO total
    FROM order_items oi
    JOIN vinyls v ON oi.vinyl_id = v.vinyl_id
    WHERE oi.order_id = order_id;
    RETURN IFNULL(total, 0);
END //
DELIMITER ;

SELECT get_order_total(4);

DELIMITER //
CREATE FUNCTION average_rating(vinyl_id_check INT)
RETURNS DECIMAL(3, 2)
DETERMINISTIC
BEGIN
    DECLARE avg_rating DECIMAL(3, 2);
    SELECT AVG(rating) INTO avg_rating
    FROM reviews
    WHERE vinyl_id = vinyl_id_check;
    RETURN IFNULL(avg_rating, 0);
END //
DELIMITER ;

SELECT average_rating(15);

DELIMITER //
CREATE FUNCTION is_vinyl_in_stock(vinyl_id_param INT)
RETURNS BOOLEAN
DETERMINISTIC
BEGIN
    DECLARE stock_count INT;
    
    SELECT is_in_stock INTO stock_count
    FROM vinyls
    WHERE vinyl_id = vinyl_id_param;
    
    RETURN stock_count > 0;
END //
DELIMITER ;
