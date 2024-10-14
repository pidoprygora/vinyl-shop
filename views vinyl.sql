use vinylshop;

CREATE VIEW available_vinyls_view AS
SELECT 
    v.vinyl_id,
    v.title,
    a.artist_name,
    g.genre_name,
    c.category_name,
    v.price,
    v.is_in_stock,
    v.release_year
FROM 
    vinyls v
JOIN 
    artists a ON v.artist_id = a.artist_id
JOIN 
    genres g ON v.genre_id = g.genre_id
JOIN 
    categories c ON v.category_id = c.category_id
WHERE 
    v.is_in_stock > 0;

CREATE VIEW user_order_history_view AS
SELECT 
    o.order_id,
    u.user_id,
    u.username,
    o.order_date,
    o.order_status,
    v.title AS vinyl_title,
    oi.quantity,
    (v.price * oi.quantity) AS item_total,
    o.total_sum
FROM 
    orders o
JOIN 
    users u ON o.user_id = u.user_id
JOIN 
    order_items oi ON o.order_id = oi.order_id
JOIN 
    vinyls v ON oi.vinyl_id = v.vinyl_id;
