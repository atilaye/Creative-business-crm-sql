-- seed_data/sample_inserts.sql

-- Sample Users
INSERT INTO users (name, email, phone, segment) VALUES
('Aisha Patel', 'aisha@example.com', '1234567890', 'retail'),
('Carlos Vega', 'carlos@example.com', '2345678901', 'wholesale'),
('Rina Kapoor', 'rina@example.com', '3456789012', 'influencer');

-- Sample Products
INSERT INTO products (name, category, tags, price, stock) VALUES
('Gold Leaf Necklace', 'jewelry', ARRAY['boho', 'statement'], 120.00, 15),
('Minimalist Silk Print', 'textile', ARRAY['minimalist'], 85.00, 30),
('Logo Redesign Package', 'graphic_design', ARRAY['branding', 'digital'], 250.00, 10);

-- Sample Orders
INSERT INTO orders (user_id, product_id, status, order_date, quantity, total_price) VALUES
(1, 1, 'shipped', '2024-06-15', 2, 240.00),
(2, 2, 'pending', '2024-06-18', 1, 85.00),
(3, 3, 'shipped', '2024-06-20', 1, 250.00);

-- Sample Contact Logs
INSERT INTO contact_log (user_id, contact_method, contact_date, notes) VALUES
(1, 'email', '2024-06-10 10:00:00', 'Asked about custom options'),
(2, 'instagram', '2024-06-12 16:30:00', 'Replied to story'),
(3, 'call', '2024-06-14 14:00:00', 'Scheduled a consult');

-- Sample Campaigns
INSERT INTO campaigns (name, channel, target_segment, launched_on) VALUES
('Summer Sale', 'email', 'retail', '2024-06-01'),
('Wholesale Outreach', 'social', 'wholesale', '2024-06-05');

-- Sample Outreach Logs
INSERT INTO outreach_log (campaign_id, user_id, response, outreach_date) VALUES
(1, 1, 'clicked', '2024-06-02 09:00:00'),
(2, 2, 'ignored', '2024-06-06 10:15:00'),
(1, 3, 'replied', '2024-06-03 13:00:00');
