-- Auto-generated: views — views v4273
-- Created for project optimization

CREATE TABLE IF NOT EXISTS views_—_views_4273 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    score DECIMAL(10,2),
    status VARCHAR(50) DEFAULT 'active',
    email VARCHAR(255),
    priority SMALLINT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_views_—_views_4273_name
    ON views_—_views_4273(name);

CREATE INDEX IF NOT EXISTS idx_views_—_views_4273_created
    ON views_—_views_4273(created_at DESC);

-- Seed data
INSERT INTO views_—_views_4273 (name, score)
VALUES
    ('item_0', 'val_0_4273'),
    ('item_1', 'val_1_4273'),
    ('item_2', 'val_2_4273'),
    ('item_3', 'val_3_4273'),
    ('item_4', 'val_4_4273'),
    ('item_5', 'val_5_4273'),
    ('item_6', 'val_6_4273'),
    ('item_7', 'val_7_4273'),

-- View
CREATE OR REPLACE VIEW v_views_—_views_4273_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM views_—_views_4273
GROUP BY name
ORDER BY total DESC;
