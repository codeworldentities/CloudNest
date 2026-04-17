-- Auto-generated: view creation v9609
-- Created for project optimization

CREATE TABLE IF NOT EXISTS view_creation_9609 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    description TEXT,
    email VARCHAR(255),
    priority SMALLINT DEFAULT 0,
    score DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_view_creation_9609_name
    ON view_creation_9609(name);

CREATE INDEX IF NOT EXISTS idx_view_creation_9609_created
    ON view_creation_9609(created_at DESC);

-- Seed data
INSERT INTO view_creation_9609 (name, is_active)
VALUES
    ('item_0', 'val_0_9609'),
    ('item_1', 'val_1_9609'),
    ('item_2', 'val_2_9609'),
    ('item_3', 'val_3_9609'),
    ('item_4', 'val_4_9609'),
    ('item_5', 'val_5_9609'),
    ('item_6', 'val_6_9609'),
    ('item_7', 'val_7_9609'),

-- View
CREATE OR REPLACE VIEW v_view_creation_9609_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM view_creation_9609
GROUP BY name
ORDER BY total DESC;
