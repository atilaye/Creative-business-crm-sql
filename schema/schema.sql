-- schema/schema.sql

-- Users Table
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT,
    phone TEXT,
    segment TEXT,
    joined_at TIMESTAMP DEFAULT NOW()
);

-- Products Table
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    name TEXT,
    category TEXT,
    tags TEXT[],
    price NUMERIC(10,2),
    stock INT,
    created_at TIMESTAMP DEFAULT NOW()
);

-- Orders Table
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(user_id),
    product_id INT REFERENCES products(product_id),
    status TEXT DEFAULT 'pending',
    order_date DATE,
    quantity INT,
    total_price NUMERIC(10,2)
);

-- Contact Log Table
CREATE TABLE contact_log (
    contact_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(user_id),
    contact_method TEXT,
    contact_date TIMESTAMP,
    notes TEXT
);

-- Campaigns Table
CREATE TABLE campaigns (
    campaign_id SERIAL PRIMARY KEY,
    name TEXT,
    channel TEXT,
    target_segment TEXT,
    launched_on DATE
);

-- Outreach Log Table
CREATE TABLE outreach_log (
    outreach_id SERIAL PRIMARY KEY,
    campaign_id INT REFERENCES campaigns(campaign_id),
    user_id INT REFERENCES users(user_id),
    response TEXT,
    outreach_date TIMESTAMP
);
