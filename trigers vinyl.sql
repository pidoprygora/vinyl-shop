-- first
DELIMITER //
CREATE TRIGGER delete_order_items
BEFORE DELETE ON orders
FOR EACH ROW
BEGIN
    DELETE FROM order_items
    WHERE order_id = OLD.order_id;
END //
DELIMITER ;

DROP TRIGGER delete_order_items;

INSERT INTO orders (user_id, order_date, order_status, total_sum) VALUES 
(1, '2024-09-15', 'pending', 100),
(2, '2024-09-16', 'shipped', 200);

INSERT INTO order_items (order_id, vinyl_id, quantity) VALUES
(6, 1, 2),
(6, 2, 3),
(7, 3, 1);

DELETE FROM orders WHERE order_id = 6;

SELECT 
    *
FROM
    order_items
WHERE
    order_id = 8;

-- second 
DELIMITER //
CREATE TRIGGER update_order
AFTER INSERT ON order_items
FOR EACH ROW
BEGIN
    DECLARE total INT;

SELECT 
    SUM(price * quantity)
INTO total FROM
    order_items oi
        JOIN
    vinyls v ON oi.vinyl_id = v.vinyl_id
WHERE
    oi.order_id = NEW.order_id;

UPDATE orders 
SET 
    total_sum = total
WHERE
    order_id = NEW.order_id;
END //
DELIMITER ;

DROP TRIGGER update_order;

INSERT INTO orders (user_id, order_date, order_status, total_sum)
VALUES (4, CURDATE(), 'pending', 0);

INSERT INTO order_items (order_id, vinyl_id, quantity)
VALUES (10, 8, 3);

ALTER TABLE orders AUTO_INCREMENT = 8;

SELECT 
    *
FROM
    orders;

DELETE FROM orders 
WHERE
    order_id = 8;
    
-- third
DELIMITER //

CREATE TRIGGER update_total_order
AFTER UPDATE ON order_items
FOR EACH ROW
BEGIN
    DECLARE total INT;

    SELECT 
        SUM(v.price * oi.quantity)
    INTO total
    FROM
        order_items oi
        JOIN vinyls v ON oi.vinyl_id = v.vinyl_id
    WHERE
        oi.order_id = NEW.order_id;

    UPDATE orders 
    SET 
        total_sum = total
    WHERE
        order_id = NEW.order_id;
END //

DELIMITER ;

DROP TRIGGER update_total_order;

INSERT INTO orders (user_id, order_date, order_status, total_sum)
VALUES (7, CURDATE(), 'pending', 0);

INSERT INTO order_items (order_id, vinyl_id, quantity)
VALUES (11, 10, 1);

SELECT * FROM orders;

UPDATE order_items 
SET quantity = 2
WHERE order_id = 11 AND vinyl_id = 7;



